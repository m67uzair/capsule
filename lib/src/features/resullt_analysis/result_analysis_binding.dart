import 'package:capsule/src/features/resullt_analysis/result_analysis_controller.dart';
import 'package:get/get.dart';

class ResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ResultController>(ResultController());
  }
}
