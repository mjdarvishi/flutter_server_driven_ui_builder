import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'row.dto.g.dart';

@TypeAnnotation("row")
@JsonSerializable()
class RowSchemaDto extends SchemaDto {
  RowSchemaDto(String type, String ?key,this.children) : super(type,key);

  List<SchemaDto> children;

  factory RowSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$RowSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RowSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children
          .map(
            (e) => e.buildWidget(),
          )
          .toList(),
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(
      SchemaDto node, List<T> found) {
    super.searchChildrenOfType(node, found);
    for (var child in children) {
      child.searchChildrenOfType(child, found);
    }
  }

  @override
  SchemaDto? findByKey(String targetKey) {
    if (key == targetKey) {
      return this;
    }
    for (var child in children) {
      final result = child.findByKey(targetKey);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
