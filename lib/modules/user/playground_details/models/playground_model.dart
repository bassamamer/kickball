import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kick_ball/helpers/constant_helper.dart';

Future<Uint8List> getBytesFromAssets(String path, int width, int height) async {
  ByteData data = await rootBundle.load(path);
  // Using buffer.asUint8List() explicitly with offset and length for better compatibility
  ui.Codec codec = await ui.instantiateImageCodec(
    data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    targetHeight: height,
    targetWidth: width,
  );
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}

class PlayGroundModel {
  final String name;
  final int hourPrice;
  final String imageUrl;
  final int playerNum;
  final String mapLocation;
  final int workingTime;
  final double lng;
  final double lat;

  const PlayGroundModel({
    required this.name,
    required this.hourPrice,
    required this.imageUrl,
    required this.playerNum,
    required this.mapLocation,
    required this.workingTime,
    required this.lng,
    required this.lat,
  });

  Future<Marker> toMarker(double userLat, double userLng) async {
    return Marker(
        markerId: MarkerId(name),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(title: name, snippet: 'Go to google Maps'),
        icon: BitmapDescriptor.fromBytes(
            await getBytesFromAssets(AppAssets.playgroundLocation, 100, 100)),
        onTap: () {
          // url_launcher can be used here
        });
  }

  static List<PlayGroundModel> playgrounds = const [
    PlayGroundModel(
        name: 'نادي جرين هيلز ',
        hourPrice: 200,
        imageUrl: AppAssets.b1,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/BvLK5WSYDtNMAt5w8',
        workingTime: 24,
        lat: 30.1639744,
        lng: 31.6362841),
    PlayGroundModel(
        name: 'ملعب كرة قدم',
        hourPrice: 200,
        imageUrl: AppAssets.b2,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/ToHwVDrR4FDatj8N8',
        workingTime: 24,
        lat: 30.1579846,
        lng: 31.6239809),
    PlayGroundModel(
        name: 'sporting club',
        hourPrice: 200,
        imageUrl: AppAssets.b3,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/hX844SSuQCzL2n3F6',
        workingTime: 24,
        lat: 30.1745296,
        lng: 31.6444389),
    PlayGroundModel(
        name: 'ملعب اجيال',
        hourPrice: 200,
        imageUrl: AppAssets.b4,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/PRPX7NTh4WJwgwFc6',
        workingTime: 24,
        lat: 30.1734522,
        lng: 31.6511022),
    PlayGroundModel(
        name: 'Ragab sports',
        hourPrice: 200,
        imageUrl: AppAssets.b5,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/ZHFFgvtQB6mvBV399',
        workingTime: 24,
        lat: 30.1312274,
        lng: 31.6395317),
    PlayGroundModel(
        name: 'ملعب خماسي بدر',
        hourPrice: 200,
        imageUrl: AppAssets.b6,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/ToufJtC4gVxw3pDV7',
        workingTime: 24,
        lat: 30.1297921,
        lng: 31.7147405),
    PlayGroundModel(
        name: 'champion arena',
        hourPrice: 200,
        imageUrl: AppAssets.n1,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/VXaPoMwnHzXe1bv39',
        workingTime: 24,
        lat: 30.0353907,
        lng: 31.350934),
    PlayGroundModel(
        name: 'ملاعب الوفاء والامل',
        hourPrice: 200,
        imageUrl: AppAssets.n2,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/ABWtz4Ktd8dgZokQ7',
        workingTime: 24,
        lat: 30.0401191,
        lng: 31.3544145),
    PlayGroundModel(
        name: 'ملعب الواحه',
        hourPrice: 200,
        imageUrl: AppAssets.n3,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/msFe5NZXXkxVsXsbA',
        workingTime: 24,
        lat: 30.0409176,
        lng: 31.378083),
    PlayGroundModel(
        name: 'ملعب ليفربول الرياضي',
        hourPrice: 200,
        imageUrl: AppAssets.n4,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/X56k8ZpYAUZoxvQQ6',
        workingTime: 24,
        lat: 30.0485816,
        lng: 31.3155262),
    PlayGroundModel(
        name: 'ملعب الحجاز',
        hourPrice: 200,
        imageUrl: AppAssets.m1,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/eEsDZRJDWy1L44m48',
        workingTime: 24,
        lat: 30.1121259,
        lng: 31.3489627),
    PlayGroundModel(
        name: 'HFC Club',
        hourPrice: 200,
        imageUrl: AppAssets.m2,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/sMoBaMxZmrBK5Gvx6',
        workingTime: 24,
        lat: 30.1074908,
        lng: 31.2730225),
    PlayGroundModel(
        name: 'ملعب كرة قدم 4',
        hourPrice: 200,
        imageUrl: AppAssets.m3,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/aJFKWRB1AdNp1knz5',
        workingTime: 24,
        lat: 30.1067862,
        lng: 31.3321771),
    PlayGroundModel(
        name: 'ملعب اليكس',
        hourPrice: 200,
        imageUrl: AppAssets.o1,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/WPtfmupCzSr52jiN7',
        workingTime: 24,
        lat: 30.2549852,
        lng: 31.4751555),
    PlayGroundModel(
        name: 'ملعب ويمبلي',
        hourPrice: 200,
        imageUrl: AppAssets.o2,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/MH9ccubK3e4mNQ2y5',
        workingTime: 24,
        lat: 30.2372743,
        lng: 31.4777015),
    PlayGroundModel(
        name: 'ملعب زيد الحي السادس',
        hourPrice: 200,
        imageUrl: AppAssets.o2,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/1PdyUA2RJ1cpeaNL6',
        workingTime: 24,
        lat: 30.2087364,
        lng: 31.4698063),
    PlayGroundModel(
        name: 'fit soccer field',
        hourPrice: 200,
        imageUrl: AppAssets.o2,
        playerNum: 5,
        mapLocation: 'https://goo.gl/maps/Q6t3AXh82VrqQ6Rs9',
        workingTime: 24,
        lat: 30.2086407,
        lng: 31.4698414),
  ];
}
