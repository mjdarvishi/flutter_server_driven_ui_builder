import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven_ui/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven_ui/utils/extensions.dart';

part 'scaffold.dto.g.dart';

@TypeAnnotation('scaffold')
@JsonSerializable()
class ScaffoldSchemaDto extends SchemaDto {
  ScaffoldSchemaDto(String type, String ?key,this.body, this.bgColor) : super(type,key);

  SchemaDto body;
  String? bgColor;

  factory ScaffoldSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ScaffoldSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScaffoldSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Scaffold(
      backgroundColor: bgColor?.color,
      body: body.buildWidget(),
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(SchemaDto node, List<T> found) {
    super.searchChildrenOfType(node, found);
    body.searchChildrenOfType(body, found);
  }
  @override
  SchemaDto? findByKey(String targetKey) {
    if (key == targetKey) {
      return this;
    }
    final result = body.findByKey(targetKey);
    if (result != null) {
      return result;
    }
    return null;
  }
}
