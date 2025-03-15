import 'package:flutter/material.dart';
import 'package:flutter_server_driven_ui/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:type_binder/annotation.dart';

part 'align.dto.g.dart';

@TypeAnnotation('align')
@JsonSerializable()
class AlignSchemaDto extends SchemaDto {
  AlignSchemaDto(String type,String ?key, this.child, this.alignment) : super(type, key);

  SchemaDto child;
  SchemaAlignment alignment;

  factory AlignSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$AlignSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AlignSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Align(
      alignment: alignmentGeometry,
      child: child.buildWidget(),
    );
  }

  AlignmentGeometry get alignmentGeometry {
    switch (alignment) {
      case SchemaAlignment.topLeft:
        return Alignment.topLeft;
      case SchemaAlignment.topCenter:
        return Alignment.topCenter;
      case SchemaAlignment.topRight:
        return Alignment.topRight;
      case SchemaAlignment.centerLeft:
        return Alignment.centerLeft;
      case SchemaAlignment.center:
        return Alignment.center;
      case SchemaAlignment.centerRight:
        return Alignment.centerRight;
      case SchemaAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case SchemaAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case SchemaAlignment.bottomRight:
        return Alignment.bottomRight;
    }
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
