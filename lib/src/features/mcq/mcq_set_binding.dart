import 'package:capsule/src/features/mcq/mcq_set_controller.dart';
import 'package:get/get.dart';

class McqSetBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<McqSetController>(McqSetController());
  }
}