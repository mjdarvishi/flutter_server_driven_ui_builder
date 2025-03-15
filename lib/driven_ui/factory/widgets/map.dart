import 'package:flutter_map/flutter_map.dart';
import 'package:server_driven_ui_2/driven_ui/dtos/widgets/map.dto.dart';
import 'package:server_driven_ui_2/driven_ui/factory/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:server_driven_ui_2/utils/extensions.dart';

class MapDriven extends BaseDrivenUiWidget<MapSchemaDto> {
  MapDriven({super.key, required MapSchemaDto schema}) : super(schema);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: schema.width ?? context.width,
      height: schema.height ?? context.height * .25,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: schema.initLocatin.latLong,
          // Center the map over London
          initialZoom: schema.initialZoom,
        ),
        children: [
          TileLayer(
            // Display map tiles from any source
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            // OSMF's Tile Server
            userAgentPackageName: 'com.test.app',
            // And many more recommended properties!
          ),
          MarkerLayer(
            markers: schema.markers
                .map(
                  (e) => Marker(
                    point: e.location.latLong,
                    width: e.width,
                    height: e.height,
                    child: e.icon.buildWidget(),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
