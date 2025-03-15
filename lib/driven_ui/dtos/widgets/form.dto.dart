import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven_ui/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven_ui/driven_ui/dtos/widgets/text_field.dto.dart';
import 'package:flutter_server_driven_ui/utils/hex_color.dart';

part 'form.dto.g.dart';

@TypeAnnotation('form')
@JsonSerializable()
class FormSchemaDto extends SchemaDto {
  FormSchemaDto(String type, this.children, String key) : super(type,key);

  List<TextFieldSchemaDto> children;

  factory FormSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$FormSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FormSchemaDtoToJson(this);

  Map<String, dynamic> getFormData() {
    Map<String, dynamic> result = {};
    for (var item in children) {
      item.addToMap(result);
    }
    return result;
  }

  @override
  Widget buildWidget() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children
            .map(
              (e) => e.buildWidget(),
            )
            .toList(),
      ),
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(SchemaDto node, List<T> found) {
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
