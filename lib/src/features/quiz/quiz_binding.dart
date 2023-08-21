import 'package:capsule/src/features/quiz/quiz_controller.dart';
import 'package:get/get.dart';

class QuizBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<QuizController>(QuizController());
  }
}
