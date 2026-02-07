import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_ball/modules/user/home/controller/playgrounds_controller.dart';
import 'modules/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inject the controller globally so it's always available
  Get.put(PlaygroundsController(), permanent: true);
  
  runApp(const MyApp());

}
