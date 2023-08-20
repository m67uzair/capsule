import 'package:capsule/src/features/auth/signup/signup_controller.dart';
import 'package:get/get.dart';

class SignupBindings implements Bindings{
  @override
  void dependencies(){
    Get.put<SignupController>(SignupController());
  }
}