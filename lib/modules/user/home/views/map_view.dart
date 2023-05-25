import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kick_ball/modules/user/home/controller/playgrounds_controller.dart';

class MapView extends GetView<PlaygroundsController> {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            GoogleMap(
              markers: {
                Marker(
                    markerId: const MarkerId('My Location'),
                    position: LatLng(controller.userLocation.latitude,
                        controller.userLocation.longitude),
                    infoWindow: const InfoWindow(title: 'Your Location'),
                    icon: BitmapDescriptor.fromBytes(
                        (controller.userLocationImage))),
                ...controller.markers
              },
              mapType: MapType.normal,
              // myLocationButtonEnabled: true,
              // myLocationEnabled: true,
              initialCameraPosition: controller.initialCameraPosition.value,
              onMapCreated: (GoogleMapController gController) {
                controller.googleMapsController.complete(gController);
              },
            ),
            Positioned(
              top: 50.h,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  30.horizontalSpace,
                  SizedBox(
                    width: 400.w,
                    child: TextField(
                      onChanged: (value) {
                        controller.searchingDistance.value =
                            double.parse(value);
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter Searching area in Km",
                      ),
                    ),
                  ),
                  30.horizontalSpace,
                  ElevatedButton(
                      onPressed: () {
                        controller.findNearbyPlayGrounds();
                      },
                      child: const Text("Change area"))
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
