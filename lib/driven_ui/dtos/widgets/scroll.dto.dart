import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scroll.dto.g.dart';


@TypeAnnotation("scroll")
@JsonSerializable()
class ScrollSchemaDto extends SchemaDto {
  ScrollSchemaDto(String type,String ?key, this.child) : super(type,key);
  SchemaDto child;

  factory ScrollSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ScrollSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScrollSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return SingleChildScrollView(
      child: child.buildWidget(),
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(
      SchemaDto node, List<T> found) {
    super.searchChildrenOfType(node, found);
    child.searchChildrenOfType(child, found);
  }
  @override
  SchemaDto? findByKey(String targetKey) {
    if (key == targetKey) {
      return this;
    }
    final result = child.findByKey(targetKey);
    if (result != null) {
      return result;
    }
    return null;
  }
}
