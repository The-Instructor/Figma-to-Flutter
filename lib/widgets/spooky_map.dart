import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class SpookyMap extends StatelessWidget {
  const SpookyMap({super.key});

  // Home base: where the map starts. Replace with your school's coordinates.
  static const LatLng homeBase = LatLng(39.608528, -105.019045);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 300,
      width: double.infinity,
      clipBehavior: Clip.antiAlias, // Clips the map tiles to the rounded corners
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: colorScheme.outline,
        ),
      ),
      child: FlutterMap(
        options: const MapOptions(
          initialCenter: homeBase,
          initialZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.spooky_finder',
          ),
          const SimpleAttributionWidget(
            source: Text('OpenStreetMap contributors'),
          ),
        ],
      ),
    );
  }
}
