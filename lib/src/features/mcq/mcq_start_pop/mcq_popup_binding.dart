import 'package:capsule/src/features/mcq/mcq_start_pop/mcq_popup_controller.dart';
import 'package:get/get.dart';

class McqPopupBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<McqPopupController>(McqPopupController());
  }
}