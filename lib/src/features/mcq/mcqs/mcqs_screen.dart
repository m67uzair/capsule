import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:capsule/src/components/book_widget.dart';
import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_chapter_sets.dart';
import 'package:capsule/src/components/custom_circular.dart';
import 'package:capsule/src/components/custom_dialog.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_paused_dialog.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:custom_alert_dialog_box/custom_alert_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_chapter_list.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class McqsScreen extends StatefulWidget {
  const McqsScreen({super.key});

  @override
  State<McqsScreen> createState() => _McqsScreenState();
}

class _McqsScreenState extends State<McqsScreen> {
  int _currentStep = 0;

  bool _expanded = false;
  bool _expanded2 = false;
  bool _expanded3 = false;

  void _toggleExpand() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  void _toggleExpand2() {
    setState(() {
      _expanded2 = !_expanded2;
    });
  }

  void _toggleExpand3() {
    setState(() {
      _expanded3 = !_expanded3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Motion in a Straight Line',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomCircular(
                  mcqAttemp: '7',
                  mcqTotalQs: '20',
                  mcqReadQs: '3',
                  mcqReviseQs: '4',
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomDivider(
                      width: width_20,
                    ),
                    CustomText(
                        text: '10%',
                        color1: AppColors.pinkGrade2,
                        fontWeight: fontWeight800,
                        fontSize: font_25),
                    CustomText(
                        text: ' Completed',
                        color1: AppColors.pinkGrade2,
                        fontWeight: fontWeight600,
                        fontSize: font_18)
                  ],
                ),
                CustomDivider(
                  height: 30,
                ),
                Container(
                  //alignment: Alignment.topLeft,
                  height: height_400,
                  width: width_450,
                  //color: Colors.cyan,
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ButtonsTabBar(
                          backgroundColor: AppColors.pinkGrade2,
                          borderWidth: 2,
                          unselectedBorderColor: AppColors.pinkGrade2,
                          unselectedBackgroundColor: AppColors.white,
                          borderColor: AppColors.pinkGrade2,
                          height: height_45,
                          radius: radius_40,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          unselectedLabelStyle: TextStyle(
                              color: AppColors.pinkGrade2,
                              fontWeight: fontWeight600),
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          tabs: [
                            Tab(
                              text: strMcqs,
                            ),
                            Tab(
                              text: strRead,
                            ),
                            Tab(
                              text: strRevise,
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width:
                                        80, //// Take full width of the screen
                                    //height: height_90,
                                    child: Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor:
                                                AppColors.blueGrade2,
                                            colorScheme: ColorScheme.light(
                                              primary: AppColors.pinkGrade2,
                                            ),
                                            canvasColor: AppColors.blueGrade2),
                                        child: Stepper(
                                          currentStep: _currentStep,
                                          type: StepperType.vertical,
                                          steps: [
                                            Step(
                                              title: Text(''),
                                              content: Text(''),
                                              isActive: _currentStep >= 0,
                                            ),
                                            Step(
                                              title: Text(''),
                                              content: Text(''),
                                              isActive: _currentStep >= 1,
                                            ),
                                            Step(
                                              title: Text(''),
                                              content: Text(''),
                                              isActive: _currentStep >= 0,
                                            ),
                                            Step(
                                              title: Text(''),
                                              content: Text(''),
                                              isActive: _currentStep >= 1,
                                            ),
                                          ],
                                          elevation: 0,
                                          onStepTapped: (index) {
                                            setState(() {
                                              _currentStep = index;
                                            });
                                          },
                                        )),
                                  ),
                                  Column(
                                    children: [
                                      CustomDivider(
                                        height: height_15,
                                      ),
                                      CustomChaptersSets(
                                        onTap: (){
                                          print('success');
                                          CustomAlertDialogBox.showCustomAlertBox(
                                            context: context,
                                            willDisplayWidget: Container(
                                              height: height_400,
                                              width: width_450,
                                              child: Column(
                                                children: [
                                                  TextIcon(text: 'Unit and Measurement', fontSize: font_12, Icons: Icons.cancel_outlined, onTap: (){
                                                    Get.back();
                                                  }),
                                                  TextIcon(text: '3.2 Position, path length and displacement', fontSize: font_15),
                                                  CustomDivider(height: 20,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      TextContainer(text: '25',  text2: strMcqs),
                                                      TextContainer(text: '25',  text2: strMcqs),
                                                      TextContainer(text: '25',  text2: strMcqs),
                                                    ],
                                                  ),
                                                  CustomDivider(height: 30,),
                                                  RadioText(),
                                                  CustomDivider(height: 30,),
                                                  CustomButton(
                                                      text: 'text',
                                                      color: AppColors.white,
                                                      fontWeight: fontWeight600,
                                                      font: font_15,
                                                      onPress: (){print('Custom button');})

                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                          containerColor: AppColors.pinkGrade2,
                                          containerShadowColor:
                                              AppColors.pinkOpacity,
                                          topicName:
                                              '3.2 Position, path length and displacement',
                                          subTopicName: '20 ${strMcqs}',
                                          image: ImgAssets.transparent),
                                      CustomDivider(
                                        height: height_20,
                                      ),
                                      CustomChaptersSets(
                                        onTap: (){
                                          print('success');
                                          CustomAlertDialogBox.showCustomAlertBox(
                                            context: context,
                                            willDisplayWidget: Container(
                                              //height: height_400,
                                              width: width_450,
                                              child: Column(
                                                children: [
                                                  TextIcon(text: 'Unit and Measurement', fontSize: font_12, Icons: Icons.cancel_outlined, onTap: (){
                                                    Get.back();
                                                  }),
                                                  TextIcon(text: '3.2 Position, path length and displacement', fontSize: font_15),
                                                  LinearProgressBar(
                                                    maxSteps: 6,
                                                    progressType: LinearProgressBar.progressTypeLinear,
                                                    currentStep: 1,
                                                    progressColor: AppColors.pinkGrade2,
                                                    backgroundColor: AppColors.greyColor,
                                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                                                    semanticsLabel: "Label",
                                                    semanticsValue: "Value",
                                                    minHeight: 10,
                                                  ),
                                                  CustomDivider(height: 20,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      TextContainer(text: '25',  text2: strMcqs),
                                                      TextContainer(text: '25',  text2: strMcqs),
                                                      TextContainer(text: '25',  text2: strMcqs),
                                                    ],
                                                  ),
                                                  CustomDivider(height: 30,),
                                                  RadioTextTwo(),
                                                  CustomDivider(height: 30,),
                                                  CustomButton(
                                                      text: 'text',
                                                      color: AppColors.white,
                                                      fontWeight: fontWeight600,
                                                      font: font_15,
                                                      onPress: (){print('Custom button');})

                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                          containerColor: AppColors.blueGrade2,
                                          containerShadowColor:
                                              AppColors.blueOpacity,
                                          topicName:
                                              '3.2 Position, path length and displacement',
                                          subTopicName: '20 ${strMcqs}',
                                          image: ImgAssets.transparent),
                                    ],
                                  ),
                                ],
                              ), //mcqs

                              SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Wrap(
                                  children: [
                                    for (int i = 0; i <= 20; i++)
                                      CustomBook(
                                        text: 'Hey its logical book',
                                        image: ImgAssets.bookImage,
                                      ),
                                  ],
                                ),
                              ),

                              ListView(
                                children: [
                                  CustomDivider(
                                    height: height_20,
                                  ),
                                  GestureDetector(
                                    onTap: _toggleExpand,
                                    child: AnimatedContainer(
                                      alignment: Alignment.center,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      height: _expanded ? 300 : 70,
                                      width: 500,
                                      decoration: BoxDecoration(
                                          color: AppColors.pinkFillColor,
                                          borderRadius:
                                              BorderRadius.circular(radius_15),
                                          border: Border.all(
                                              color: AppColors.pinkGrade2,
                                              width: 2)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: margin_10),
                                        child: ListView(
                                            children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: margin_15),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomText(
                                                    text:
                                                        'Bookmarked Questions',
                                                    color1:
                                                        AppColors.pinkGrade2,
                                                    fontWeight: fontWeight500,
                                                    fontSize: font_14),
                                                Icon(
                                                  _expanded == true
                                                      ? Icons
                                                          .keyboard_arrow_up_rounded
                                                      : Icons
                                                          .keyboard_arrow_down,
                                                  color: AppColors.pinkGrade2,
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_expanded == true)
                                            for (int i = 0; i < 10; i++)
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: margin_10),
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: CustomChaptersSets(
                                                    subTopicName: '',
                                                    containerColor:
                                                        AppColors.pinkGrade2,
                                                    containerShadowColor:
                                                        AppColors.pinkOpacity,
                                                    topicName:
                                                        'Q1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                                    image: ImgAssets.bookmark2,
                                                  ),
                                                ),
                                              ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                  CustomDivider(
                                    height: height_10,
                                  ),
                                  GestureDetector(
                                    onTap: _toggleExpand2,
                                    child: AnimatedContainer(
                                      alignment: Alignment.center,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      height: _expanded2 ? 300 : 70,
                                      width: 500,
                                      decoration: BoxDecoration(
                                          color: AppColors.pinkFillColor,
                                          borderRadius:
                                              BorderRadius.circular(radius_15),
                                          border: Border.all(
                                              color: AppColors.pinkGrade2,
                                              width: 2)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: margin_10),
                                        child: ListView(
                                            children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: margin_15),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomText(
                                                    text: 'Books',
                                                    color1:
                                                        AppColors.pinkGrade2,
                                                    fontWeight: fontWeight500,
                                                    fontSize: font_14),
                                                Icon(
                                                  _expanded2 == true
                                                      ? Icons
                                                          .keyboard_arrow_up_rounded
                                                      : Icons
                                                          .keyboard_arrow_down,
                                                  color: AppColors.pinkGrade2,
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_expanded2 == true)
                                            for (int i = 0; i < 10; i++)
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: margin_10),
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Wrap(
                                                    children: [
                                                      for (int i = 0;
                                                          i <= 20;
                                                          i++)
                                                        CustomBook(
                                                          text:
                                                              'Hey its logical book',
                                                          image: ImgAssets
                                                              .bookImage,
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                  CustomDivider(
                                    height: height_10,
                                  ),
                                  GestureDetector(
                                    onTap: _toggleExpand3,
                                    child: AnimatedContainer(
                                      alignment: Alignment.center,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      height: _expanded3 ? 300 : 70,
                                      width: 500,
                                      decoration: BoxDecoration(
                                          color: AppColors.pinkFillColor,
                                          borderRadius:
                                              BorderRadius.circular(radius_15),
                                          border: Border.all(
                                              color: AppColors.pinkGrade2,
                                              width: 2)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: margin_10),
                                        child: ListView(children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: margin_15),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomText(
                                                    text: 'Video',
                                                    color1:
                                                        AppColors.pinkGrade2,
                                                    fontWeight: fontWeight500,
                                                    fontSize: font_14),
                                                Icon(
                                                  _expanded3 == true
                                                      ? Icons
                                                          .keyboard_arrow_up_rounded
                                                      : Icons
                                                          .keyboard_arrow_down,
                                                  color: AppColors.pinkGrade2,
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_expanded3 == true)
                                            for (int i = 0; i < 10; i++)
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: margin_10),
                                                child: InkWell(
                                                  onTap: () {},
                                                  child:
                                                      SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    child: Wrap(
                                                      children: [
                                                        for (int i = 0;
                                                            i <= 20;
                                                            i++)
                                                          CustomBook(
                                                            text:
                                                                'Kochi-based startup launches video.',
                                                            image:
                                                                ImgAssets.vid,
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                  CustomDivider(
                                    height: height_50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// SizedBox(
// height: 50,
// child: GestureDetector(
// onTap: _toggleExpand,
// child: Container(
// height: _expanded ? 800 : 100,
// width: 500,
// decoration: BoxDecoration(
// color: AppColors.pinkFillColor,
// borderRadius: BorderRadius.circular(radius_15),
// border: Border.all(color: AppColors.pinkGrade2, width: 2)
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 15),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// CustomText(text: 'Bookmarked Questions', color1: AppColors.pinkGrade2, fontWeight: fontWeight500, fontSize: font_14),
// Icon(Icons.keyboard_arrow_down, color: AppColors.pinkGrade2,)
// ],
// ),
// ),
// ),
// ),
// ),
// if (_expanded)
// Container(
//
// height: 100, // Adjust the height as needed
// width: double.infinity,
//
// decoration: BoxDecoration(
// color: AppColors.pinkFillColor,
// borderRadius: BorderRadius.circular(radius_15),
// border: Border.all(color: AppColors.pinkGrade2, width: 2)
// ),
// child: Center(
// child: Text('Additional Content'),
// ),
// ),
