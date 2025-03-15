import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven_ui/driven_ui/dtos/schema.dto.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven_ui/share/theme/text_theme.dart';
import 'package:flutter_server_driven_ui/utils/hex_color.dart';

part 'lable.dto.g.dart';

enum LableMode {
  @JsonValue('h1')
  h1,
  @JsonValue('h2')
  h2,
  @JsonValue('h3')
  h3,
  @JsonValue('h4')
  h4,
  @JsonValue('h5')
  h5,
  @JsonValue('h6')
  h6,
}

@TypeAnnotation('text')
@JsonSerializable()
class LableSchemaDto extends SchemaDto {
  LableSchemaDto(String type,String ?key, this.value, this.textAlign,
      {this.mode = LableMode.h2})
      : super(type,key);
  LableMode mode;
  LableStyleDto? style;
  String value;
  String? textAlign;

  factory LableSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$LableSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LableSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Text(
      value,
      style: textStyle,
      maxLines: 50,
      textAlign: textAlign == null
          ? TextAlign.start
          : TextAlign.values.byName(textAlign!),
    );
  }

  Color? get _textColor {
    if (style?.textColor != null) {
      return HexColor(style!.textColor!);
    }
    return null;
  }

  TextStyle? get textStyle {
    TextStyle? textStyle;
    switch (mode) {
      case LableMode.h1:
        textStyle = AppTextTheme.titleLargeTextStyle;
        break;
      case LableMode.h2:
        textStyle = AppTextTheme.titleMediumTextStyle;
        break;
      case LableMode.h3:
        textStyle = AppTextTheme.bodyLargeTextStyle;
        break;
      case LableMode.h4:
        textStyle = AppTextTheme.bodyMediumTextStyle;
        break;
      case LableMode.h5:
        textStyle = AppTextTheme.titleSmallTextStyle;
        break;
      case LableMode.h6:
        textStyle = AppTextTheme.bodySmallTextStyle;
        break;
    }
    return textStyle.copyWith(color: _textColor);
  }
}

@JsonSerializable()
class LableStyleDto {
  String? textColor;

  LableStyleDto(this.textColor);

  factory LableStyleDto.fromJson(Map<String, dynamic> json) =>
      _$LableStyleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LableStyleDtoToJson(this);
}
