import 'package:capsule/src/features/home/contact_us/contact_us_controller.dart';
import 'package:get/get.dart';

class ContactUsBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<ContactUsController>(ContactUsController());
  }
}