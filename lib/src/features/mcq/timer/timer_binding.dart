import 'package:capsule/src/features/mcq/timer/timer_controller.dart';
import 'package:get/get.dart';

class TimerBindings implements Bindings{
  @override
  void dependencies(){
    Get.put<TimerController>(TimerController());
  }
}