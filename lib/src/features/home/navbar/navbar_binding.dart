import 'package:capsule/src/features/home/navbar/navbar_controller.dart';
import 'package:get/get.dart';

class NavBarBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<NavBarController>(NavBarController());
  }
}