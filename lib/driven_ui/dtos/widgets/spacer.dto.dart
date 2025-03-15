import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spacer.dto.g.dart';

@TypeAnnotation("spacer")
@JsonSerializable()
class SpacerSchemaDto extends SchemaDto {
  SpacerSchemaDto(String type,String ?key,) : super(type,key);

  factory SpacerSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$SpacerSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SpacerSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return const Spacer();
  }
}
