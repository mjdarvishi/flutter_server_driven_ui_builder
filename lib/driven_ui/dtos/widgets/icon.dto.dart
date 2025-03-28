import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';
import 'package:flutter_server_driven/utils/hex_color.dart';

part 'icon.dto.g.dart';

@TypeAnnotation('icon')
@JsonSerializable()
class IconSchemaDto extends SchemaDto {
  IconSchemaDto(String type,String ?key, this.iconPoint, this.color, this.size)
      : super(type,key);
  int iconPoint;
  double? size;
  String? color;

  factory IconSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$IconSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$IconSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Icon(
      IconData(iconPoint, fontFamily: 'MaterialIcons'),
      size: size,
      color: color != null ? HexColor(color!) : null,
    );
  }

}
