import 'dart:async';
import 'dart:math' show cos, sqrt, asin;
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/modules/user/playground_details/models/playground_model.dart';

class PlaygroundsController extends GetxController {
  var playgrounds = PlayGroundModel.playgrounds.obs;

  var isLoading = false.obs;

  var markers = <Marker>{}.obs;

  final Completer<GoogleMapController> googleMapsController =
      Completer<GoogleMapController>();

  var initialCameraPosition = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  ).obs;

  late Position userLocation;

  late Uint8List userLocationImage;

  @override
  void onInit() async {
    super.onInit();

    userLocationImage =
        await getBytesFromAssets(AppAssets.userLocation, 10, 10);
  }

  findPlayground(String input) async {
    playgrounds = PlayGroundModel.playgrounds.obs;

    isLoading(true);

    // await Future.delayed(const Duration(seconds: 3));

    playgrounds =
        (playgrounds.where((p) => p.name.contains(input)).toList()).obs;

    isLoading(false);
  }

  Future<Position> getLocation() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error("We need access to your location");
      }
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  double calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  Future findNearbyPlayGrounds() async {
    // موقع المستخدم
    userLocation = await getLocation();

    // // الشروق
    // userLocation = Position(
    //     longitude: 31.6243079,
    //     latitude: 30.1437676,
    //     timestamp: DateTime.now(),
    //     accuracy: 2398.485590608257,
    //     altitude: 0,
    //     heading: 0,
    //     speed: 0,
    //     speedAccuracy: 0);

    // العبور
    // userLocation = Position(
    //     longitude: 31.476296,
    //     latitude: 30.2360693,
    //     timestamp: DateTime.now(),
    //     accuracy: 2398.485590608257,
    //     altitude: 0,
    //     heading: 0,
    //     speed: 0,
    //     speedAccuracy: 0);

    // // مصر الجديدة
    // userLocation = Position(
    //     longitude: 31.3299999,
    //     latitude: 30.1045366,
    //     timestamp: DateTime.now(),
    //     accuracy: 2398.485590608257,
    //     altitude: 0,
    //     heading: 0,
    //     speed: 0,
    //     speedAccuracy: 0);
    //
    // // مدينة نصر
    // userLocation = Position(
    //     longitude: 31.3443001,
    //     latitude: 30.0500776,
    //     timestamp: DateTime.now(),
    //     accuracy: 2398.485590608257,
    //     altitude: 0,
    //     heading: 0,
    //     speed: 0,
    //     speedAccuracy: 0);

    for (var playground in playgrounds) {
      final distance = calculateDistance(userLocation.latitude,
          userLocation.longitude, playground.lat, playground.lng);
      if (distance <= 15) {
        markers.add(await playground.toMarker());
      }
    }

    Get.log("Number of Playgrounds with 15Km: ${markers.length}");

    initialCameraPosition.value = CameraPosition(
      target: LatLng(userLocation.latitude, userLocation.longitude),
      zoom: 14.4746,
    );
  }

  Future<Uint8List> getBytesFromAssets(
      String path, int width, int height) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetHeight: height, targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
