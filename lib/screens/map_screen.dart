// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../widgets/app_text.dart';

class MapScreen extends StatelessWidget {
  static const id = 'map_screen.dart';
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: double.maxFinite,
            margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.509364, -0.128928),
                zoom: 9.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                AppText(text: 'Mala'),
                SizedBox(height: 10),
                AppText(text: 'Mala'),
                SizedBox(height: 10),
                AppText(text: 'Mala'),
                SizedBox(height: 10),
                AppText(text: 'Mala'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
