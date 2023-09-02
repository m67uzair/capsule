import 'package:capsule/src/features/home/termsCond/terms_controller.dart';
import 'package:get/get.dart';

class TermsBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<TermsController>(TermsController());
  }
}