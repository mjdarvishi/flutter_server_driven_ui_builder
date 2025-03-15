import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven/registry.dart';

part 'schema.dto.g.dart';

typedef validationFunc = String? Function(String? value);

enum SchemaAlignment {
  @JsonValue('topLeft')
  topLeft,
  @JsonValue('topCenter')
  topCenter,
  @JsonValue('topRight')
  topRight,
  @JsonValue('centerLeft')
  centerLeft,
  @JsonValue('center')
  center,
  @JsonValue('centerRight')
  centerRight,
  @JsonValue('bottomLeft')
  bottomLeft,
  @JsonValue('bottomCenter')
  bottomCenter,
  @JsonValue('bottomRight')
  bottomRight
}

enum SchemaType {
  @JsonValue('text')
  text,
  @JsonValue('column')
  column,
  @JsonValue('row')
  row,
  @JsonValue('image')
  image,
  @JsonValue('link')
  link,
  @JsonValue('map')
  map,
  @JsonValue('icon')
  icon,
  @JsonValue('box')
  box,
  @JsonValue('expanded')
  expanded,
  @JsonValue('spacer')
  spacer,
  @JsonValue('scroll')
  scroll,
  @JsonValue('color_box')
  colorBox,
  @JsonValue('decoration')
  decoration,
  @JsonValue('padding')
  padding,
}

abstract class PrePerWidget {
  Widget buildWidget();
}

@JsonSerializable()
class SchemaDto extends PrePerWidget {
  SchemaDto(this.type,this.key);

  String type;
  String ?key;

  factory SchemaDto.fromJson(Map<String, dynamic> json) {
    return registry[json['type']]!(json);
  }

  Map<String, dynamic> toJson() => _$SchemaDtoToJson(this);

  List<T> findChildrenOfType<T extends SchemaDto>() {
    List<T> found = [];
    searchChildrenOfType(this, found);
    return found;
  }
  SchemaDto? findByKey(String targetKey) {
    if (key == targetKey) {
      return this;
    }
    return null;
  }
  void searchChildrenOfType<T extends SchemaDto>(
      SchemaDto node, List<T> found) {
    if (node is T) {
      found.add(node as T);
    }
  }


  @override
  Widget buildWidget() {
    return const SizedBox();
  }
}
