import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';

part 'text_field.dto.g.dart';

@TypeAnnotation('text_field')
@JsonSerializable()
class TextFieldSchemaDto extends SchemaDto {
  TextFieldSchemaDto(String type, String key) : super(type, key);

  factory TextFieldSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$TextFieldSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TextFieldSchemaDtoToJson(this);

  final _controller = TextEditingController();

  @override
  Widget buildWidget() {
    return TextFormField(
      controller: _controller,
    );
  }

  void addToMap(Map<String, dynamic> data) {
    data[key!] = _controller.text;
  }
  String getValue() {
    return _controller.text;
  }
}
