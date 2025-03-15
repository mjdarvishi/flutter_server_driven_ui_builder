import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_server_driven/driven_ui/dtos/schema.dto.dart';
import 'package:flutter_server_driven/driven_ui/event_bus/event_bus.dart';
import 'package:flutter_server_driven/driven_ui/event_bus/events/btn_click.dart';

part 'button.dto.g.dart';

@TypeAnnotation('button')
@JsonSerializable()
class ButtonSchemaDto extends SchemaDto {
  ButtonSchemaDto(String type, String key) : super(type,key);

  factory ButtonSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ButtonSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ButtonSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return OutlinedButton(onPressed: () {
      SchemaEventBus.fire(ButtonClickEvent(key!));
    }, child: Text("click me"));
  }
}
