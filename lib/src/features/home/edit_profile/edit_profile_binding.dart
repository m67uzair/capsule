import 'package:capsule/src/features/home/edit_profile/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileBindind implements Bindings{
  @override
  void dependencies(){
    Get.put<EditProfileController>(EditProfileController());
  }
}