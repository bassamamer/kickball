import 'package:get/get.dart';
import 'package:kick_ball/modules/user/playground_details/controller/playground_details_controller.dart';

class PlaygroundDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaygroundDetailsController>(
        () => PlaygroundDetailsController());
  }
}
