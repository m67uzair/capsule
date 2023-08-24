import 'package:capsule/src/features/test/test_controller.dart';
import 'package:get/get.dart';

class TestBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<TestController>(TestController());
  }
}
