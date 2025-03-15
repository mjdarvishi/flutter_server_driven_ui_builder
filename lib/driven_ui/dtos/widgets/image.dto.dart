import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:schema_registry/annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:server_driven_ui_2/utils/extensions.dart';

part 'image.dto.g.dart';

@TypeAnnotation('image')
@JsonSerializable()
class ImageSchemaDto extends SchemaDto {
  ImageSchemaDto(
      String type,String ?key, this.imageUrl, this.height, this.width, this.errorWidget)
      : super(type,key);

  String imageUrl;
  double? width;
  double? height;
  SchemaDto? errorWidget;

  factory ImageSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$ImageSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageSchemaDtoToJson(this);

  @override
  Widget buildWidget() {
    return Builder(
      builder: (BuildContext context) {
        return CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            height: height,
            width: width ?? context.width,
            errorWidget: (context, url, error) =>
                errorWidget?.buildWidget() ?? const SizedBox());
      },
    );
  }

  @override
  void searchChildrenOfType<T extends SchemaDto>(
      SchemaDto node, List<T> found) {
    super.searchChildrenOfType(node, found);
    if(errorWidget!=null) {
      errorWidget!.searchChildrenOfType(errorWidget!, found);
    }
  }
}
