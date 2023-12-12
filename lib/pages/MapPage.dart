import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/pages/homepage/homepage.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> controller = Completer();
    const LatLng center = LatLng(28.67656924998032, 77.50039845269335);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/white_logo.png",
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 20),
            const Text(
              "SMART CAR PARKING",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                // parkingController.timeCounter();
                Get.toNamed("/about-us");
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              )),
        ],
        centerTitle: true,
      ),
      body: GoogleMap(
        buildingsEnabled: true,
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: center,
          zoom: 14.0,
        ),
        markers: {
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_1'),
            position: const LatLng(28.67120491311754, 77.50065306014204),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_2'),
            position: const LatLng(28.67720491311754, 77.50745306014204),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_3'),
            position: const LatLng(28.67120491311754, 77.50745306014204),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_4'),
            position: const LatLng(28.67656924998032, 77.50039845269335),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_5'),
            position: const LatLng(28.663202888100216, 77.49152728663199),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_6'),
            position: const LatLng(28.675985596816712, 77.48866774869336),
          ),
          Marker(
            visible: true,
            onTap: () {
              Get.to(HomePage());
            },
            markerId: const MarkerId('parking_7'),
            position: const LatLng(28.682830114064096, 77.50327080241746),
          ),
        },
        myLocationButtonEnabled: true,
        onMapCreated: (GoogleMapController controller) {},
      ),
    );
  }
}
