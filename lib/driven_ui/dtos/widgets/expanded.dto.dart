import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expanded.dto.g.dart';


@TypeAnnotation('expanded')
@JsonSerializable()
class ExpandedSchemaDto extends SchemaDto {
  ExpandedSchemaDto(String type,String ?key, this.child, this.flex) : super(type,key);

  SchemaDto child;
  @JsonKey(defaultValue: 1)
  int flex;

  factory ExpandedSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ExpandedSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExpandedSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Expanded(
      flex: flex,
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
