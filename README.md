# Project Title

## Description

This package provides the ability to add server-driven UI to your Flutter project. By sending JSON data to your API, this package will dynamically convert the JSON into actual Flutter widgets. This allows for a highly flexible and customizable user interface that can be updated and modified without requiring a new app release. The server-driven approach enables you to manage and control the UI from the server side, making it easier to implement changes and updates on the fly.

Key features include:
- Dynamic widget rendering based on JSON data
- Easy integration with existing Flutter projects
- Support for a wide range of Flutter widgets
- Simplified UI updates without app redeployment
- Enhanced flexibility and control over the app's user interface

This package is ideal for applications that require frequent UI updates or need to display different UIs based on user roles, preferences, or other dynamic conditions.

### Available Widgets
- Align
- Button
- ColorBox
- Column
- Decoration
- Expand
- Form
- Icon
- Image
- Lable
- Link
- Map
- Padding
- Row
- Scaffold
- Scroll
- SizeBox
- Spacer
- TextField

## How to use

```dart
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/widgets/form.dto.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/widgets/text_field.dto.dart';
import 'package:server_driven_ui_2/driven_ui/event_bus/event_bus.dart';
import 'package:server_driven_ui_2/driven_ui/event_bus/events/btn_click.dart';

void main(){
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  static const String name = 'advertise';
  static const String path = '/advertise';

  @override
  State<TestApp> createState() => _AdvertisePageState();
}

class _AdvertisePageState extends State<TestApp> {
  final schema = SchemaDto.fromJson({
    "type": "scaffold",
    "body": {
      "type": "column",
      "children": [
        {
          "type": "padding",
          "padding-top": 25,
          "child": {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "image",
              "imageUrl":
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7ZM5IRn9GL1_cdI8TDtkdKFx_9YVRBOUNw&s',
              "height": 100,
              "width": 150
            },
          },
        },
        {"type": "box", "height": 25},
        {
          "type": "align",
          "alignment": "center",
          "child": {
            "type": "text",
            "value": "Text page",
            "mode": "h1"
          }
        },
        {"type": "box", "height": 25},
        {
          "type": "padding",
          "padding-top": 15,
          "padding-right": 15,
          "padding-left": 15,
          "padding-bottom": 5,
          "child": {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "text",
              "textAlign": "justify",
              "value": "test description with diffrent text mode",
              "mode": "h3"
            }
          },
        },
        {
          "type": "padding",
          "padding-bottom": 15,
          "padding-left": 15,
          "child": {
            "type": "email",
            "value": "widget to open mail",
            "url": "mailto:test@gmail.com",
            "style": {"underline": true}
          },
        },
        {
          "type": "row",
          "children": [
            {
              "type": "expanded",
              "child": {
                "type": "image",
                "imageUrl":
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7ZM5IRn9GL1_cdI8TDtkdKFx_9YVRBOUNw&s',
                "height": 100
              },
            },
            {
              "type": "expanded",
              "child": {
                "type": "image",
                "imageUrl":
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7ZM5IRn9GL1_cdI8TDtkdKFx_9YVRBOUNw&s',
                "height": 100
              },
            }
          ]
        },
        {"type": "button", "key": "test"},
        {
          "type": "form",
          "key": "test_form",
          "children": [
            {"type": "text_field", "key": "form_one"},
          ]
        },
        {"type": "spacer"},
        {
          "type": "padding",
          "padding-bottom": 15,
          "child": {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "link",
              "value": "link widget",
              "url": "https://google.com/",
            }
          },
        }
      ]
    }
  });

  @override
  void initState() {
    // find all forms in the widget
    final forms = schema.findChildrenOfType<FormSchemaDto>();
    // find special child from the children
    final form =
        forms.firstWhereOrNull(((element) => element.key == 'test_form'));
    SchemaEventBus.on<ButtonClickEvent>().listen(
      (event) {
        // find one child by its key
        final text=(schema.findByKey('form_one') as TextFieldSchemaDto).getValue();
        print(text);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: schema.buildWidget());
  }
}
```

### Widget Json Example
- Align
```json
 {
          "type": "align",
          "alignment": "center",
          "child": {
            "type": "text",
            "value": "Text page",
            "mode": "h1"
          }
}
```
- Button
```json
{"type": "button", "key": "test"}
```
- ColorBox
```json
{
    "type": "column",
    "color":"red"
}
```
- Column
```json
{
    "type": "column",
     "children": [
        // Other schemas
     ]
}
```
- Decoration
```json
{
    "type":"decoration",
    "child":"Other child",
    "color":"blue",
    "borderRadius":17,
    "borderWidth":1,
    "borderColor":"red",
    "shape":"the shap can be rect or circle"

}
```
- Expand
```json
{
     "type": "expanded",
     "child":"Other schema"
}
```
- Form
```json
{
    "type": "form",
    "key": "test_form",
    "children": [
    {"type": "text_field", "key": "form_one"},
    ]
}
```
- Icon
```json
{
    "iconPoint":"this is int value of the icon",
    "size":12,
    "color":"red"
}
```
- Link
```json
{
    "type": "link",
    "value": "link widget",
    "url": "https://google.com/",
}
```
- Image
```json
{
"type": "image",
"imageUrl":
    'Image url',
"height": 100,
"width": 150
}
```
- Text
```json
{
"type": "text",
"textAlign": "justify",
"value": "test description with diffrent text mode",
"mode": "h3"
}
```
- Email
```json
//Email like example
{
"type": "email",
"value": "widget to open mail",
"url": "mailto:test@gmail.com",
"style": {"underline": true}
}
```
- Map
```json
{
    "type":"map",
    "initialZoom":12,
    "initLocatin":{
        "lat":12,
        "lng:12
    },
    "width":12,
    "height":12,
    "markers":[
        { 
        "location": {
            "lat":12,
            "lng":12
        },
        "width":12,
        "height":12,
        "child":"Other schema"
    }

    ]
}
```
- Padding
```json
{
    "type": "padding",
    "padding-top": 25,
    "child": {
    "type": "align",
    "alignment": "center",
    "child": "Other schema"
}
```
- Row
```json
 { "type": "row",
    "children":[
    // other your widget
    ]
}
```
- Scaffold
```json
{
 "type": "scaffold",
 "body": "Other schema"
}
```
- Scroll
```json
{
    "type":"scroll",
    "child":"Other schema"
}
```
- SizeBox
```json
{"type": "box", "height": 25}
```
- Spacer
```json
 {"type": "spacer"}
```
- TextField
```json
{"type": "text_field", "key": "form_one"},
```

### Descriotion of how package work
the process of converting json to widget is like what flutter is doning, it convert the json a tree, so you have some feature
to access these widget in the tree like:
- findChildrenOfType: you can find all childern with this type
- findByKey: you can assing key to all schema and find them in tree by that key
 so by these method you can find your schema in tree and use their values and thier functions.

 also there is event but underthe hood and you cal listen to that and recive the events. this is how you can use it:
 ```dart
 SchemaEventBus.on<ButtonClickEvent>().listen(
      (event) {
        // find one child by its key
        final text=(schema.findByKey('form_one') as TextFieldSchemaDto).getValue();
        print(text);
      },
    );
```
rigth now we only have one event and its related to the button that you specify in your schema ButtonClickEvent
and you can get btnName inside the event and determin which btn is pressed.
In this example you can see how to retive the information of the form after clicking the btn by use. so this gives you ability to 
create active comminication with what your are building
```dart
@override
  void initState() {
    // find all forms in the widget
    final forms = schema.findChildrenOfType<FormSchemaDto>();
    // find special child from the children
    final form =
        forms.firstWhereOrNull(((element) => element.key == 'test_form'));
    SchemaEventBus.on<ButtonClickEvent>().listen(
      (event) {
        // find one child by its key
        final text=(schema.findByKey('form_one') as TextFieldSchemaDto).getValue();
        print(text);
      },
    );
```