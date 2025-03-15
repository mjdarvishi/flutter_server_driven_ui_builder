import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven/driven_ui/factory/widgets/link.dart';

part 'link.dto.g.dart';


@TypeAnnotation('link')
@TypeAnnotation('email')
@JsonSerializable()
class LinkSchemaDto extends SchemaDto {
  LinkSchemaDto(String type,String ?key, this.value, this.style, this.url)
      : super(type,key);
  LinkStyleDto? style;
  String value;
  String url;

  factory LinkSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$LinkSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LinkSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return LinkDriven(schema: this);
  }

}

@JsonSerializable()
class LinkStyleDto {
  String? textColor;
  bool underline;
  double? fontSize;

  LinkStyleDto(this.textColor, this.underline, this.fontSize);

  factory LinkStyleDto.fromJson(Map<String, dynamic> json) =>
      _$LinkStyleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LinkStyleDtoToJson(this);
}
