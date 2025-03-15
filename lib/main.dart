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
    print(form?.getFormData());
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
