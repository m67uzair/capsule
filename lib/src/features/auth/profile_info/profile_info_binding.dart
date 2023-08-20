import 'package:capsule/src/features/auth/profile_info/profile_info_controller.dart';
import 'package:get/get.dart';

class ProfileInfoBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<ProfileInfoController>(ProfileInfoController());
  }
}