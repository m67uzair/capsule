import 'package:capsule/src/features/home/countdown/countdown_controller.dart';
import 'package:get/get.dart';

class CountdownBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<CountdownController>(CountdownController());
  }
}