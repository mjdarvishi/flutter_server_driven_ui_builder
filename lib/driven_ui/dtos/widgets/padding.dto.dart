import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
part 'padding.dto.g.dart';


@TypeAnnotation('padding')
@JsonSerializable()
class PaddingSchemaDto extends SchemaDto {
  PaddingSchemaDto(String type,String ?key, this.child, this.paddingBottom,
      this.paddingLeft, this.paddingRight, this.paddingTop)
      : super(type,key);

  SchemaDto child;
  @JsonKey(name: 'padding-top', defaultValue: 0)
  double paddingTop;
  @JsonKey(name: 'padding-right', defaultValue: 0)
  double paddingRight;
  @JsonKey(name: 'padding-bottom', defaultValue: 0)
  double paddingBottom;
  @JsonKey(name: 'padding-left', defaultValue: 0)
  double paddingLeft;

  EdgeInsets get padding {
    return EdgeInsets.fromLTRB(
        paddingLeft, paddingTop, paddingRight, paddingBottom);
  }

  factory PaddingSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$PaddingSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PaddingSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Padding(
      padding: padding,
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
