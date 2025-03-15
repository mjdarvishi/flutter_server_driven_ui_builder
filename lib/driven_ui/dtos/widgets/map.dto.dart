import 'package:flutter/material.dart';
import 'package:type_binder/annotation.dart';import 'package:server_driven_ui_2/driven_ui/dtos/schema.dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:server_driven_ui_2/driven_ui/factory/widgets/map.dart';
import 'package:latlong2/latlong.dart';

part 'map.dto.g.dart';


@TypeAnnotation('map')
@JsonSerializable()
class MapSchemaDto extends SchemaDto {
  MapSchemaDto(String type,String ?key,this.markers, this.initialZoom, this.initLocatin,this.height,this.width,) : super(type,key);

  double initialZoom;
  Location initLocatin;
  double ?width;
  double ?height;
  List<MarkerDto> markers;
  factory MapSchemaDto.fromJson(Map<String, dynamic> json) =>
      _$MapSchemaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MapSchemaDtoToJson(this);



  @override
  Widget buildWidget() {
    return MapDriven(schema: this);
  }
}

@JsonSerializable()
class Location{
  double lat;
  double lng;

  Location(this.lat, this.lng);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);



  LatLng get latLong=>LatLng(lat,lng);
}

@JsonSerializable()
class MarkerDto{
  Location location;
  double width;
  double height;
  SchemaDto icon;

  MarkerDto(this.location, this.width, this.height, this.icon);

  factory MarkerDto.fromJson(Map<String, dynamic> json) =>
      _$MarkerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MarkerDtoToJson(this);
}