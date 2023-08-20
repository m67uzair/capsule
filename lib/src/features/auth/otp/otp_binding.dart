import 'package:capsule/src/features/auth/otp/otp_controller.dart';
import 'package:get/get.dart';

class OtpBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<OtpController>(OtpController());
  }
}