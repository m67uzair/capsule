import 'package:capsule/src/features/custom_test/custom_test_controller.dart';
import 'package:get/get.dart';

class CustomTestBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CustomTestController>(CustomTestController());
  }
}
