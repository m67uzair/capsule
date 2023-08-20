import 'package:capsule/src/features/resullt_analysis/result_analysis_controller.dart';
import 'package:capsule/src/features/review_answere/review_answer_controller.dart';
import 'package:get/get.dart';

class ReviewAnswerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ReviewAnswerController>(ReviewAnswerController());
  }
}
