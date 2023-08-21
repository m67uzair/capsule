import 'dart:async';

import 'package:capsule/src/core/constants/assets.dart';
import 'package:get/get.dart';

enum StepColorState { Grey, Green, Red, White }

class QuizController extends GetxController {
  Timer? countdownTimer;
  Rx<Duration> duration = const Duration(minutes: 10).obs;

  RxList<Map<String, dynamic>> questionsDetails = [
    {
      'question': 'distance from earth to moon',
      'questionImg': ImgAssets.questionImg,
      'correctOption': 0,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '38,6360', 'optionImg': ImgAssets.optionImg},
        {'text': 'wakirimasein', 'optionImg': ImgAssets.optionImg},
        {'text': 'its very much', 'optionImg': ImgAssets.optionImg},
        {'text': 'kuch to hoga', 'optionImg': ImgAssets.optionImg},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'whats you name?',
      'questionImg': '',
      'correctOption': 2,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': 'john doe', 'optionImg': ImgAssets.optionImg},
        {'text': 'doe john', 'optionImg': ImgAssets.optionImg},
        {'text': 'john jonh', 'optionImg': ImgAssets.optionImg},
        {'text': 'doe doe', 'optionImg': ImgAssets.optionImg},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'whats x divided by 0 (x/0)',
      'questionImg': ImgAssets.questionImg,
      'correctOption': 1,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '0', 'optionImg': ''},
        {'text': 'infinty', 'optionImg': ''},
        {'text': 'very much', 'optionImg': ''},
        {'text': 'very less', 'optionImg': ''},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'distance from earth to moon',
      'questionImg': '',
      'correctOption': 3,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '38,6360', 'optionImg': ''},
        {'text': 'wakirimasein', 'optionImg': ''},
        {'text': 'its very much', 'optionImg': ''},
        {'text': 'kuch to hoga', 'optionImg': ''},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'distance from earth to moon',
      'questionImg': ImgAssets.questionImg,
      'correctOption': 0,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '38,6360', 'optionImg': ImgAssets.optionImg},
        {'text': 'wakirimasein', 'optionImg': ImgAssets.optionImg},
        {'text': 'its very much', 'optionImg': ImgAssets.optionImg},
        {'text': 'kuch to hoga', 'optionImg': ImgAssets.optionImg},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'distance from earth to moon',
      'questionImg': ImgAssets.questionImg,
      'correctOption': 0,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '38,6360', 'optionImg': ImgAssets.optionImg},
        {'text': 'wakirimasein', 'optionImg': ImgAssets.optionImg},
        {'text': 'its very much', 'optionImg': ImgAssets.optionImg},
        {'text': 'kuch to hoga', 'optionImg': ImgAssets.optionImg},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'whats you name?',
      'questionImg': '',
      'correctOption': 2,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': 'john doe', 'optionImg': ImgAssets.optionImg},
        {'text': 'doe john', 'optionImg': ImgAssets.optionImg},
        {'text': 'john jonh', 'optionImg': ImgAssets.optionImg},
        {'text': 'doe doe', 'optionImg': ImgAssets.optionImg},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'whats x divided by 0 (x/0)',
      'questionImg': ImgAssets.questionImg,
      'correctOption': 1,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '0', 'optionImg': ''},
        {'text': 'infinty', 'optionImg': ''},
        {'text': 'very much', 'optionImg': ''},
        {'text': 'very less', 'optionImg': ''},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'distance from earth to moon',
      'questionImg': '',
      'correctOption': 3,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '38,6360', 'optionImg': ''},
        {'text': 'wakirimasein', 'optionImg': ''},
        {'text': 'its very much', 'optionImg': ''},
        {'text': 'kuch to hoga', 'optionImg': ''},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
    {
      'question': 'distance from earth to moon',
      'questionImg': ImgAssets.questionImg,
      'correctOption': 0,
      'stepColorState': StepColorState.White,
      'options': [
        {'text': '38,6360', 'optionImg': ImgAssets.optionImg},
        {'text': 'wakirimasein', 'optionImg': ImgAssets.optionImg},
        {'text': 'its very much', 'optionImg': ImgAssets.optionImg},
        {'text': 'kuch to hoga', 'optionImg': ImgAssets.optionImg},
      ],
      'solution': {'solutionText': 'its a very good solution', 'solutionImg': ImgAssets.solutionImg},
    },
  ].obs;
  List<String> selectedOption = <String>[];
  RxString minutes = "10".obs;
  RxString seconds = "00".obs;

  RxInt currentStep = 0.obs;
  RxInt currentIndex = (-1).obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    startTimer();
    // fetchQuestions();

    super.onInit();
  }

  // Future<void> fetchQuestions() async {
  //   isLoading.toggle();
  //
  //   List<QuestionsModel>? testList = await repository.fetchQuestionsDetails(
  //       testId: testSetController.selectedTestData.value.testID!,
  //       subject: subjectModeController.subjectsModel.value.subjectName!,
  //       className: subjectsController.classId.value,
  //       mode: subjectModeController.mode.value.split(" ")[0]);
  //
  //   if (testList != null && testList.isNotEmpty) {
  //     questionsDetails.value = testList;
  //     selectedOption = List<String>.filled(questionsDetails.length, "");
  //   }
  //   isLoading.toggle();
  // }

  void startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;

    final second = duration.value.inSeconds - reduceSecondsBy;

    if (second < 0) {
      countdownTimer!.cancel();
    } else {
      duration.value = Duration(seconds: second);

      minutes.value = strDigits(duration.value.inMinutes.remainder(10));
      seconds.value = strDigits(duration.value.inSeconds.remainder(60));
    }
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');

  handleOptionTap(int index) {
    currentIndex.value = index;
    selectedOption[currentStep.value] = (index + 1).toString();

    if (currentIndex.value == questionsDetails[currentStep.value]['correctOption']) {
      questionsDetails[currentStep.value]['stepColorState'] = StepColorState.Green;
    } else {
      questionsDetails[currentStep.value]['stepColorState'] = StepColorState.Red;
    }
  }

  // handleOptionTap(int index) {
  //   currentIndex.value = index;
  //   selectedOption[currentStep.value] = (index + 1).toString();
  // }

  onNextPressed() {
    print(currentStep);
    if (currentStep < questionsDetails.length) {
      ++currentStep;
    }
  }

  onStepContinue() {
    if (selectedOption[currentStep.value].trim() == "") {
      questionsDetails[currentStep.value]['stepColorState'] = StepColorState.Grey;
      selectedOption[currentStep.value] = "Not Selected";
    }

    ++currentStep;
    currentIndex.value = -1;
  }

  // onStepContinue() {
  //   if (selectedOption[currentStep.value].trim() == "") {
  //     selectedOption[currentStep.value] = "Not Selected";
  //   }
  //
  //   ++currentStep;
  //   currentIndex.value = -1;
  // }

  onStepCancel() {
    if (selectedOption.last.trim() == "") {
      selectedOption.last = "Not Selected";
      questionsDetails[questionsDetails.length - 1]['stepColorState'] = StepColorState.Grey;
    }

    // Get.offAndToNamed(AppRoutes.getScoreBoardRoute());
  }

// onStepCancel() {
//   if (selectedOption.last.trim() == "") selectedOption.last = "Not Selected";
//
//   // Get.offAndToNamed(AppRoutes.getScoreBoardRoute());
// }
}
