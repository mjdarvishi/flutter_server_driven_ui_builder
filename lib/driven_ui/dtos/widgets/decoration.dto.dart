import 'package:flutter/material.dart';
import 'package:schema_registry/annotation.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:server_driven_ui_2/utils/hex_color.dart';

part 'decoration.dto.g.dart';

@TypeAnnotation('decoration')
@JsonSerializable()
class DecorationSchemaDto extends SchemaDto {
  DecorationSchemaDto(String type,String ?key, this.child, this.color,
      this.borderRadius, this.shape, this.borderWidth, this.borderColor)
      : super(type,key);

  SchemaDto child;
  String? color;
  double? borderRadius;
  double? borderWidth;
  String? borderColor;
  @JsonKey(defaultValue: 'rect')
  String shape;

  factory DecorationSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$DecorationSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DecorationSchemaDtoToJson(this);

  BoxBorder? get boxBorder {
    if (borderColor == null) {
      return null;
    }
    if (borderWidth == null) {
      return null;
    }
    return Border.all(color: HexColor(borderColor!), width: borderWidth!);
  }

  @override
  Widget buildWidget() {
    return DecoratedBox(
      decoration: BoxDecoration(
          shape: shape == 'rect' ? BoxShape.rectangle : BoxShape.circle,
          color: color != null ? HexColor(color!) : null,
          border: boxBorder,
          borderRadius: borderRadius != null
              ? BorderRadius.circular(borderRadius!)
              : null),
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
