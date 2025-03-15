import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven_ui/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'column.dto.g.dart';

@TypeAnnotation('column')
@JsonSerializable()
class ColumnSchemaDto extends SchemaDto {
  ColumnSchemaDto(String type,String ?key, this.children) : super(type,key);

  List<SchemaDto> children;

  factory ColumnSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ColumnSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ColumnSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this
          .children
          .map(
            (e) => e.buildWidget(),
      )
          .toList(),
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(SchemaDto node,
      List<T> found) {
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
