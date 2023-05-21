import 'package:get/get.dart';
import 'package:kick_ball/modules/user/home/controller/playgrounds_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaygroundsController>(() => PlaygroundsController());
  }
}
