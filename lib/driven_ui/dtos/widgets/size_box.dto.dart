import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven_ui/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'size_box.dto.g.dart';

@TypeAnnotation("box")
@JsonSerializable()
class SizeBoxSchemaDto extends SchemaDto {
  SizeBoxSchemaDto(String type, String ?key,this.height, this.width, this.child)
      : super(type,key);

  double? width;
  double? height;
  SchemaDto? child;

  factory SizeBoxSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$SizeBoxSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SizeBoxSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return SizedBox(
      width: height,
      height: height,
      child: child?.buildWidget(),
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(
      SchemaDto node, List<T> found) {
    super.searchChildrenOfType(node, found);
    if(child!=null) {
      child!.searchChildrenOfType(child!, found);
    }
  }
  @override
  SchemaDto? findByKey(String targetKey) {
    if (key == targetKey) {
      return this;
    }
    final result = child?.findByKey(targetKey);
    if (result != null) {
      return result;
    }
    return null;
  }
}
