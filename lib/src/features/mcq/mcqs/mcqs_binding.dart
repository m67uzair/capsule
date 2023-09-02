import 'package:capsule/src/features/mcq/mcqs/mcqs_controller.dart';
import 'package:get/get.dart';

class McqsBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<McqsController>(McqsController());
  }
}