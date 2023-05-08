import 'package:kick_ball/helpers/constant_helper.dart';

class PlayGroundModel {
  final String name;
  final int hourPrice;
  final String imageUrl;
  final int playerNum;
  final String location;
  final int workingTime;

  const PlayGroundModel({
    required this.name,
    required this.hourPrice,
    required this.imageUrl,
    required this.playerNum,
    required this.location,
    required this.workingTime,
  });

  static List<PlayGroundModel> playgrounds = const [
    PlayGroundModel(
      name: 'Mal3b el hareef ',
      hourPrice: 200,
      imageUrl: AppAssets.playground1,
      playerNum: 5,
      location: 'El Nozha st. Triumph Square',
      workingTime: 24,
    ),
    PlayGroundModel(
      name: 'Mal3b el lycee',
      hourPrice: 200,
      imageUrl: AppAssets.playground2,
      playerNum: 5,
      location: 'Mal3b El Tanmya ,El Nozha st. Triumph Square',
      workingTime: 24,
    ),
    PlayGroundModel(
      name: 'Mal3b nady elsalam',
      hourPrice: 200,
      imageUrl: AppAssets.playground3,
      playerNum: 5,
      location: 'Mal3b El Tanmya ,El Nozha st. Triumph Square',
      workingTime: 24,
    ),
    PlayGroundModel(
      name: 'Mal3b el Tanmya',
      hourPrice: 200,
      imageUrl: AppAssets.playground4,
      playerNum: 5,
      location: 'Mal3b El Tanmya ,El Nozha st. Triumph Square',
      workingTime: 24,
    ),
    PlayGroundModel(
      name: 'Mal3b plaza',
      hourPrice: 200,
      imageUrl: AppAssets.playground5,
      playerNum: 5,
      location: 'Mal3b El Tanmya ,El Nozha st. Triumph Square',
      workingTime: 24,
    ),
    PlayGroundModel(
      name: 'Mal3b el saha',
      hourPrice: 200,
      imageUrl: AppAssets.playground6,
      playerNum: 5,
      location: 'Mal3b El Tanmya ,El Nozha st. Triumph Square',
      workingTime: 24,
    ),
  ];
}
