import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven/utils/hex_color.dart';

part 'color_box.dto.g.dart';

@TypeAnnotation('color_box')
@JsonSerializable()
class ColorBoxSchemaDto extends SchemaDto {
  ColorBoxSchemaDto(String type,String ?key, this.child, this.color) : super(type,key);

  SchemaDto child;
  String color;

  factory ColorBoxSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ColorBoxSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ColorBoxSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return ColoredBox(
      color: HexColor(color),
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
