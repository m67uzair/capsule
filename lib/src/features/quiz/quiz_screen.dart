import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_mcq_option.dart';
import 'package:capsule/src/components/custom_rectangle_icon_button.dart';
import 'package:capsule/src/components/custom_solution_tile.dart';
import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/components/custom_text_button.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/features/quiz/quiz_controller.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreen extends GetView<QuizController> {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EasyStep> stepperData = controller.questionsDetails.map<EasyStep>((question) {
      int stepIndex = controller.questionsDetails.indexOf(question);
      StepColorState stepColor = question['stepColorState'];

      Color stepColorValue = Colors.grey;
      if (stepColor == StepColorState.Green) {
        stepColorValue = Colors.green;
      } else if (stepColor == StepColorState.Red) {
        stepColorValue = Colors.red;
      }

      return EasyStep(
        customStep: Center(
          child: CustomText(
            text: (stepIndex + 1).toString(),
            fontWeight: fontWeight600,
            fontSize: font_17,
            textColor: controller.currentStep >= stepIndex ? AppColors.white : AppColors.blueGrade2,
          ),
        ),
      );
    }).toList();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: margin_15,
        ),
        child: Column(
          children: [
            SizedBox(height: height_45),
            SizedBox(
              height: height_42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      ImgAssets.bookMark,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_5),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: AppColors.pinkGrade2,
                      borderRadius: BorderRadius.all(Radius.circular(radius_10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          ImgAssets.timer,
                          width: width_20,
                          height: height_20,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: width_2),
                        CustomText(
                          text: '09 : 32',
                          textColor: AppColors.white,
                          fontSize: font_15,
                          fontWeight: fontWeight600,
                        ),
                        SizedBox(width: width_2),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            ImgAssets.pause,
                            width: width_20,
                            height: height_20,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: margin_20, vertical: margin_15),
                      backgroundColor: AppColors.blueGrade2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(radius_25),
                      )),
                    ),
                    onPressed: () {},
                    child: CustomText(
                      text: 'End',
                      textColor: AppColors.white,
                      fontWeight: fontWeight600,
                      fontSize: font_17,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height_25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: width_1, color: AppColors.pinkGrade2),
                borderRadius: BorderRadius.all(Radius.circular(radius_10)),
                color: AppColors.pinkGrade2.withOpacity(0.05),
              ),
              child: EasyStepper(
                activeStep: controller.currentStep.value,
                steps: stepperData,
                reachedSteps: const {0},
                showLoadingAnimation: false,
                stepRadius: radius_16,
                internalPadding: 0,
                lineThickness: 0.1,
                lineLength: width_1,
                borderThickness: 2,
                defaultStepBorderType: BorderType.normal,
                unreachedStepBackgroundColor: AppColors.white,
                unreachedStepTextColor: AppColors.blueGrade2,
                unreachedStepIconColor: AppColors.blueGrade2,
                activeStepBackgroundColor: AppColors.pinkGrade2,
                finishedStepBackgroundColor: AppColors.graphPink,
                showTitle: false,
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: controller.questionsDetails.length,
                child: TabBarView(
                  children: _buildQuestionsList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Material(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.more_vert),
              ),
              ElevatedButton(
                  onPressed: (){
                    print('button pressed');
                    controller.onNextPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blueGrade2,
                    padding: EdgeInsets.symmetric(
                      horizontal: margin_15,
                      vertical: margin_10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_15),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ImgAssets.arrowCircleRight,
                        color: AppColors.white,
                      ),
                      SizedBox(width: width_5,),
                      CustomText(
                        text: 'Submit',
                        fontWeight: fontWeight600,
                        fontSize: font_17,
                        textColor: AppColors.white,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildQuestionsList() {
    return controller.questionsDetails.map<Widget>((question) {
      String questionString = question['question'];
      String questionImg = question['questionImg'];
      String optionA = question['options'][0]['text'];
      String optionB = question['options'][1]['text'];
      String optionC = question['options'][2]['text'];
      String optionD = question['options'][3]['text'];
      String optionAImage = question['options'][0]['optionImg'];
      String optionBImage = question['options'][1]['optionImg'];
      String optionCImage = question['options'][2]['optionImg'];
      String optionDImage = question['options'][3]['optionImg'];

      String solutionText = '';
      String solutionImage = question['solution']['solutionImg'];

      return ListView(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          CustomText(
            text: questionString,
            fontWeight: fontWeight600,
            fontSize: font_16,
            textColor: AppColors.black,
            maxLines: 3,
            softwrap: true,
          ),
          SizedBox(
            height: height_15,
          ),
          if (questionImg.isNotEmpty)
            Image.asset(
              questionImg.toString(),
              width: width_240,
              height: height_240,
              fit: BoxFit.cover,
            )
          else
            const SizedBox.shrink(),
          SizedBox(
            height: height_25,
          ),
          CustomMCQOptions(
              optionA: optionA,
              optionB: optionB,
              optionC: optionC,
              optionD: optionD,
              optionAImage: optionAImage,
              optionBImage: optionBImage,
              optionCImage: optionCImage,
              optionDImage: optionDImage),
          SizedBox(
            height: height_25,
          ),
          CustomSolutionTile(
            solutionImagePath: solutionImage,
          ),
          SizedBox(
            height: height_65,
          ),
        ],
      );
    }).toList();
  }

  // Widget _nextStep() {
  //   return IconButton(
  //     onPressed: controller.onNextPressed(),
  //     icon: const Icon(Icons.arrow_forward_ios),
  //   );
  // }
}
