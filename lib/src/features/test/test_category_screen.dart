import 'package:capsule/src/components/custom_text_button_2.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/features/test/mock_test_selection_screen.dart';
import 'package:capsule/src/features/test/test_controller.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../components/custom_textTwo.dart';

class TestCategoryScreen extends GetView<TestController> {
  TestCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText('NEET Tests',
            gradientType: GradientType.linear,
            gradientDirection: GradientDirection.ttb,
            colors: const [
              AppColors.pinkGrade1,
              AppColors.pinkGrade2,
            ],
            style: TextStyle(
              fontSize: font_22,
              fontFamily: 'OpenSans',
              fontWeight: fontWeight700,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_10),
            child: CustomText(
              text: 'Lets evaluate and improve',
              textColor: AppColors.black.withOpacity(0.5),
              fontWeight: fontWeight600,
              fontSize: font_16,
            ),
          ),
          SizedBox(height: height_40),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageButton(
                      title: 'Mock Test',
                      imagePath: ImgAssets.mockTest,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: width_10,
                    ),
                    CustomImageButton(
                        title: 'Custom Test',
                        imagePath: ImgAssets.customTest,
                        onTap: () {
                          showDialog(
                            context: context,
                            // barrierDismissible: false,
                            builder: (context) {
                              return ShowCustomTestsSheet();
                            },
                          );
                        })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomImageButton extends StatelessWidget {
  const CustomImageButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  final String title;
  final String imagePath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height_150,
      width: width_150,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: margin_18,
            vertical: margin_10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(radius_10),
            ),
            color: AppColors.pinkGrade2,
          ),
          child: Column(
            children: [
              SizedBox(
                height: height_80,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: height_20,
              ),
              CustomText(
                text: title,
                fontWeight: fontWeight700,
                fontSize: font_18,
                textColor: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowCreateCustomTestSheet extends StatelessWidget {
  ShowCreateCustomTestSheet({Key? key}) : super(key: key);

  TestController testController = Get.put(TestController());

  final List<int> _steps = [0, 1, 2];

  List<EasyStep> getSteps() {
    return _steps
        .map(
          (step) => EasyStep(
            customStep: Container(
              padding: EdgeInsets.all(margin_1),
              decoration: BoxDecoration(color: AppColors.transparent, shape: BoxShape.circle),
              child: Container(
                height: height_20,
                width: width_20,
                decoration: BoxDecoration(
                  color: testController.activeStep.value >= step ? AppColors.pinkGrade2 : AppColors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Builder(builder: (BuildContext context) {
        TabController tabController = DefaultTabController.of(context);
        return Container(
          decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(radius_10)),
          margin: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_25),
          padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_2),
          child: Material(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Make a custom test to practice',
                      fontWeight: fontWeight600,
                      fontSize: font_16,
                      textColor: AppColors.black.withOpacity(0.5),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Image.asset(ImgAssets.closCircle)),
                  ],
                ),
                SizedBox(height: height_5),
                Align(
                  alignment: Alignment.topLeft,
                  child: GradientText('Choose Subjects',
                      gradientType: GradientType.linear,
                      gradientDirection: GradientDirection.ttb,
                      colors: const [
                        AppColors.pinkGrade1,
                        AppColors.pinkGrade2,
                      ],
                      style: TextStyle(
                        fontSize: font_25,
                        fontFamily: 'OpenSans',
                        fontWeight: fontWeight700,
                      )),
                ),
                SizedBox(
                  height: height_20,
                ),
                Obx(
                  () => EasyStepper(
                    activeStep: testController.activeStep.value,
                    steps: getSteps(),
                    showLoadingAnimation: false,
                    stepRadius: radius_10,
                    stepBorderRadius: 0,
                    defaultStepBorderType: BorderType.normal,
                    borderThickness: 2,
                    lineType: LineType.normal,
                    lineThickness: 0.5,
                    lineLength: width_60,
                    alignment: Alignment.topLeft,
                    steppingEnabled: false,
                    padding: EdgeInsets.zero,
                    showTitle: false,
                    finishedStepBackgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: height_25,
                ),
                SizedBox(
                  height: height_350,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: const [
                      CustomChooseSubjectsTab(),
                      CustomChooseNumberOfQuestionsTab(),
                      Center(
                        child: CustomTestOverview(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height_25),
                Obx(
                  () => Row(
                    mainAxisAlignment:
                        testController.activeStep.value == 0 ? MainAxisAlignment.center : MainAxisAlignment.spaceEvenly,
                    children: [
                      testController.activeStep.value == 0
                          ? const SizedBox.shrink()
                          : CustomTextButton2(
                              title: ' Previous ',
                              onPressed: () {
                                if (testController.activeStep.value > 0) {
                                  testController.activeStep.value--;
                                  tabController.animateTo(testController.activeStep.value);
                                }
                              },
                              bgColor: AppColors.blueGrade2,
                            ),
                      CustomTextButton2(
                          title: ' Next ',
                          onPressed: () {
                            if (testController.activeStep.value < _steps.length - 1) {
                              testController.activeStep.value++;
                              tabController.animateTo(testController.activeStep.value);
                            }
                          }),
                    ],
                  ),
                ),
                SizedBox(height: height_20),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class CustomTestOverview extends StatelessWidget {
  const CustomTestOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.pinkGrade2.withOpacity(0.10), borderRadius: BorderRadius.all(Radius.circular(radius_10))),
      padding: EdgeInsets.all(margin_15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: TextStyle(fontSize: font_15, fontWeight: fontWeight600),
            initialValue: 'Custom Test 2',
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              labelText: 'Test Name',
              labelStyle: TextStyle(fontSize: font_17, fontWeight: fontWeight700),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius_10)),
                borderSide: const BorderSide(
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: 'Custom Test Overview',
            fontWeight: fontWeight600,
            fontSize: font_18,
            textColor: AppColors.black,
          ),
          SizedBox(height: height_15),
          Row(
            children: [
              CustomSubjectSummaryWidget(),
              SizedBox(width: width_10),
              CustomSubjectSummaryWidget(),
            ],
          ),
          SizedBox(height: height_10),
          Row(
            children: [
              CustomSubjectSummaryWidget(),
              SizedBox(width: width_10),
              CustomSubjectSummaryWidget(),
            ],
          ),
          SizedBox(height: height_15),
        ],
      ),
    );
  }
}

class CustomSubjectSummaryWidget extends StatelessWidget {
  const CustomSubjectSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: margin_14, vertical: margin_18),
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(radius_10)),
        ),
        child: Column(
          children: [
            CustomText(
              text: 'Physics (NEET)',
              fontWeight: fontWeight700,
              fontSize: font_14,
              textColor: AppColors.black,
              textAlign: TextAlign.center,
              maxLines: 2,
              softwrap: true,
            ),
            SizedBox(height: height_10),
            CustomText(
              text: 'Topics Selected',
              fontWeight: fontWeight500,
              fontSize: font_14,
              textColor: AppColors.black,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height_10),
            CustomText(
              text: '29/29',
              fontWeight: fontWeight700,
              fontSize: font_14,
              textColor: AppColors.black,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomChooseSubjectsTab extends StatelessWidget {
  const CustomChooseSubjectsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.pinkGrade2.withOpacity(0.10), borderRadius: BorderRadius.all(Radius.circular(radius_10))),
      padding: EdgeInsets.all(margin_15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Choose Subjects',
            fontWeight: fontWeight600,
            fontSize: font_20,
            textColor: AppColors.black,
          ),
          SizedBox(height: height_10),
          CustomText(
            text: 'please choose the subjects for the custom test',
            fontWeight: fontWeight600,
            fontSize: font_14,
            textColor: AppColors.black.withOpacity(0.5),
            softwrap: true,
            maxLines: 2,
          ),
          SizedBox(height: height_10),
          Expanded(
            child: ListView(
              children: [
                for (int i = 0; i < 4; i++) CustomSubjectListTile(i: i),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomChooseNumberOfQuestionsTab extends StatelessWidget {
  const CustomChooseNumberOfQuestionsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.pinkGrade2.withOpacity(0.10), borderRadius: BorderRadius.all(Radius.circular(radius_10))),
      padding: EdgeInsets.all(margin_15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Questions',
            fontWeight: fontWeight600,
            fontSize: font_20,
            textColor: AppColors.black,
          ),
          SizedBox(height: height_10),
          CustomText(
            text: 'Select Number Of Questions',
            fontWeight: fontWeight600,
            fontSize: font_14,
            textColor: AppColors.black.withOpacity(0.5),
            softwrap: true,
            maxLines: 2,
          ),
          SizedBox(height: height_25),
          Row(
            children: [
              CustomMarksButton(title: '10', onTap: () {}),
              SizedBox(width: width_15),
              CustomMarksButton(title: '20', onTap: () {}),
            ],
          ),
          SizedBox(height: height_15),
          Row(
            children: [
              CustomMarksButton(title: '30', onTap: () {}),
              SizedBox(width: width_15),
              CustomMarksButton(title: '40', onTap: () {}),
            ],
          ),
          SizedBox(height: height_15),
          TextFormField(
            style: TextStyle(fontSize: font_17, fontWeight: fontWeight700),
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                labelText: 'Enter Number Of Questions',
                labelStyle: TextStyle(fontSize: font_17, fontWeight: fontWeight700),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radius_10)), borderSide: BorderSide.none)),
          )
        ],
      ),
    );
  }
}

class CustomMarksButton extends StatelessWidget {
  const CustomMarksButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: margin_30, vertical: margin_18),
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(radius_10)),
          ),
          child: CustomText(
            text: title,
            fontWeight: fontWeight700,
            fontSize: font_30,
            textColor: AppColors.black,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class CustomSubjectListTile extends StatelessWidget {
  const CustomSubjectListTile({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          // barrierDismissible: false,
          builder: (context) {
            return const CustomChooseTopics();
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(margin_10),
              margin: EdgeInsets.symmetric(vertical: margin_10), // comment
              decoration: BoxDecoration(
                  color: i % 2 == 0 ? AppColors.pinkGrade2 : AppColors.blueGrade2,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(radius_10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Physics (NEET)',
                          fontWeight: fontWeight600,
                          fontSize: font_15,
                          textColor: AppColors.white,
                          maxLines: 2,
                          softwrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: height_8,
                        ),
                        CustomText(
                          text: '29/29 topics selected',
                          fontWeight: fontWeight600,
                          fontSize: font_15,
                          textColor: AppColors.white.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(ImgAssets.edit),
                ],
              ),
            ),
          ),
          SizedBox(width: width_5),
          Transform.scale(
            scale: 2,
            child: Checkbox(
              value: true,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(radius_5),
                ),
              ),
              checkColor: AppColors.white,
              fillColor: const MaterialStatePropertyAll(AppColors.pinkGrade2),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomChooseTopics extends StatelessWidget {
  const CustomChooseTopics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(radius_10)),
      margin: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_25),
      padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_2),
      child: Material(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GradientText('Select Topic',
                  gradientType: GradientType.linear,
                  gradientDirection: GradientDirection.ttb,
                  colors: const [
                    AppColors.pinkGrade1,
                    AppColors.pinkGrade2,
                  ],
                  style: TextStyle(
                    fontSize: font_25,
                    fontFamily: 'OpenSans',
                    fontWeight: fontWeight700,
                  )),
            ),
            SizedBox(
              height: height_5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: 'Please choose the subject',
                fontWeight: fontWeight600,
                fontSize: font_14,
                textColor: AppColors.black.withOpacity(0.5),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: height_15,
                  ),
                  ExpansionTile(
                    backgroundColor: AppColors.white,
                    collapsedBackgroundColor: AppColors.pinkGrade2.withOpacity(0.10),
                    initiallyExpanded: true,
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    title: CustomText(
                      text: 'Select Class',
                      fontWeight: fontWeight600,
                      textColor: AppColors.black,
                      fontSize: font_16,
                    ),
                    children: [
                      CustomCheckBoxRow(
                        title: 'Class 11th',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Class 12th',
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  SizedBox(height: height_15),
                  ExpansionTile(
                    backgroundColor: AppColors.white,
                    collapsedBackgroundColor: AppColors.pinkGrade2.withOpacity(0.10),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    title: CustomText(
                      text: 'Select Subject',
                      fontWeight: fontWeight600,
                      textColor: AppColors.black,
                      fontSize: font_16,
                    ),
                    children: [
                      CustomCheckBoxRow(
                        title: 'Subject 1',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Subject 2',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Subject 3',
                        value: false,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Subject 4',
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  SizedBox(height: height_15),
                  ExpansionTile(
                    backgroundColor: AppColors.white,
                    collapsedBackgroundColor: AppColors.pinkGrade2.withOpacity(0.10),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    title: CustomText(
                      text: 'Select Chapter',
                      fontWeight: fontWeight600,
                      textColor: AppColors.black,
                      fontSize: font_16,
                    ),
                    children: [
                      CustomCheckBoxRow(
                        title: 'Chapter 1',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Chapter 2',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Chapter 3',
                        value: false,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Chapter 4',
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  SizedBox(height: height_15),
                  ExpansionTile(
                    backgroundColor: AppColors.white,
                    collapsedBackgroundColor: AppColors.pinkGrade2.withOpacity(0.10),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(radius_10),
                      ),
                      side: BorderSide(width: width_1),
                    ),
                    title: CustomText(
                      text: 'Select Topic',
                      fontWeight: fontWeight600,
                      textColor: AppColors.black,
                      fontSize: font_16,
                    ),
                    children: [
                      CustomCheckBoxRow(
                        title: 'Topic 1',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Topic 2',
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Topic 3',
                        value: false,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: height_10,
                      ),
                      CustomCheckBoxRow(
                        title: 'Topic 4',
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height_15),
            CustomTextButton2(title: ' Save ', onPressed: () {}),
            SizedBox(height: height_25),
          ],
        ),
      ),
    );
  }
}

class CustomCheckBoxRow extends StatelessWidget {
  const CustomCheckBoxRow({
    super.key,
    required this.title,
    this.onChanged,
    required this.value,
  });

  final String title;
  final void Function(bool? value)? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius_4),
              ),
            ),
            checkColor: AppColors.white,
            fillColor: const MaterialStatePropertyAll(AppColors.black),
          ),
        ),
        SizedBox(width: width_5),
        CustomText(
          text: title,
          fontWeight: fontWeight600,
          fontSize: font_14,
          textColor: AppColors.black,
        ),
      ],
    );
  }
}

class ShowCustomTestsSheet extends StatelessWidget {
  ShowCustomTestsSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(radius_10)),
      margin: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_25),
      padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultTextStyle(
                style: TextStyle(),
                child: CustomText(
                  text: 'Create a custom test to practice',
                  fontWeight: fontWeight600,
                  fontSize: font_16,
                  textColor: AppColors.black.withOpacity(0.5),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset(ImgAssets.closCircle)),
            ],
          ),
          SizedBox(height: height_5),
          DefaultTextStyle(
            style: const TextStyle(),
            child: Align(
              alignment: Alignment.topLeft,
              child: GradientText('Creat a Custom Test',
                  gradientType: GradientType.linear,
                  gradientDirection: GradientDirection.ttb,
                  colors: const [
                    AppColors.pinkGrade1,
                    AppColors.pinkGrade2,
                  ],
                  style: TextStyle(
                    fontSize: font_25,
                    fontFamily: 'OpenSans',
                    fontWeight: fontWeight700,
                  )),
            ),
          ),
          SizedBox(
            height: height_15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                for (int i = 0; i < 4; i++)
                  Material(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          // barrierDismissible: false,
                          builder: (context) {
                            return CustomSummaryWidget();
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(margin_10),
                        margin: EdgeInsets.symmetric(vertical: margin_10), // comment
                        decoration: BoxDecoration(
                            color: i % 2 == 0 ? AppColors.pinkGrade2 : AppColors.blueGrade2,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(radius_10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Custom Test $i',
                              fontWeight: fontWeight600,
                              fontSize: font_15,
                              textColor: AppColors.white,
                              maxLines: 2,
                              softwrap: true,
                            ),
                            SizedBox(
                              height: height_8,
                            ),
                            CustomText(
                              text: '21 MCQs',
                              fontWeight: fontWeight600,
                              fontSize: font_15,
                              textColor: AppColors.white.withOpacity(0.7),
                            ),
                            SizedBox(
                              height: height_15,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: height_5,
          ),
          DefaultTextStyle(
            style: const TextStyle(),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CustomText(
                text: '4/4 Created',
                fontWeight: fontWeight600,
                fontSize: font_16,
                textColor: AppColors.black.withOpacity(0.5),
              ),
            ),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomTextButton2(
              title: ' Create a Custom Test ',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ShowCreateCustomTestSheet();
                  },
                );
              }),
          SizedBox(
            height: height_15,
          ),
        ],
      ),
    );
  }
}

class CustomSummaryWidget extends StatelessWidget {
  const CustomSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(radius_10)),
      margin: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_25),
      padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pinkGrade2,
                    padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(radius_25)))),
                child: CustomText(
                  text: 'New Pattern',
                  fontWeight: fontWeight600,
                  fontSize: font_14,
                  textColor: AppColors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset(ImgAssets.closCircle)),
            ],
          ),
          SizedBox(height: height_15),
          DefaultTextStyle(
            style: TextStyle(),
            child: CustomText(
              text: 'NEET 23 Exclusives: Class 11 Mock Test - 1',
              fontSize: font_17,
              fontWeight: fontWeight600,
              textColor: AppColors.black,
              maxLines: 2,
              softwrap: true,
            ),
          ),
          SizedBox(
            height: height_25,
          ),
          Row(
            children: [
              const Expanded(
                child: CustomSummaryInfoContainer(
                  title: '22',
                  subtitle: 'MCQs',
                ),
              ),
              SizedBox(
                width: width_5,
              ),
              const Expanded(
                child: CustomSummaryInfoContainer(
                  title: '22',
                  subtitle: 'Mins',
                ),
              ),
              SizedBox(
                width: width_5,
              ),
              const Expanded(
                child: CustomSummaryInfoContainer(
                  title: '22',
                  subtitle: 'Marks',
                ),
              )
            ],
          ),
          SizedBox(
            height: height_25,
          ),
          const Expanded(child: CustomSummaryContainer()),
          SizedBox(
            height: height_25,
          ),
          CustomTextButton2(title: 'Start', onPressed: () {}),
          SizedBox(
            height: height_15,
          ),
        ],
      ),
    );
  }
}
