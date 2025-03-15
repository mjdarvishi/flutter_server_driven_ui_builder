import 'package:flutter_server_driven/driven_ui/dtos/widgets/link.dto.dart';
import 'package:flutter_server_driven/driven_ui/factory/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_server_driven/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkDriven extends BaseDrivenUiWidget<LinkSchemaDto> {
  LinkDriven({super.key, required LinkSchemaDto schema}) : super(schema);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(schema.url);
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      child: Text(schema.value,
          style: context.textTheme.bodyLarge!.copyWith(
              decorationColor: schema.style?.textColor?.color ?? Colors.blue,
              decoration: (schema.style?.underline ?? false)
                  ? TextDecoration.underline
                  : TextDecoration.none,
              fontSize: schema.style?.fontSize,
              color: schema.style?.textColor?.color ?? Colors.blue)),
    );
  }
}
