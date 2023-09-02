import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_chapter_list.dart';
import 'package:capsule/src/components/custom_divider.dart';import 'package:flutter/material.dart';

import '../../core/constants/dimensions.dart';
import '../../core/constants/palette.dart';

class McqSetScreen extends StatelessWidget {
  const McqSetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentStep=0;
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
      title: 'Physics (Class 12)',
        onPress: (){},
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                      width: 80, //// Take full width of the screen
                      //height: height_90,
                      child: Theme(
                        data: ThemeData(
                            colorScheme: ColorScheme.light(primary: AppColors.pinkGrade2,),
                          //  canvasColor: AppColors.darkBlue
                        ), child:Stepper(
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
                            isActive: _currentStep >= 2,
                          ),
                          Step(
                            title: Text(''),
                            content: Text(''),
                            isActive: _currentStep >= 3,
                          ),
                        ],
                        elevation: 0,
                        onStepTapped: (index) {
                          // setState(() {
                          //   _currentStep = index;
                          // });
                        },
                      ),),
                  ),
                  Column(
                    children: [
                      CustomChapterList(
                        containerColor: _currentStep==1? AppColors.blueGrade2: AppColors.pinkGrade2,
                        containerShadowColor: AppColors.pinkOpacity,
                        circularBackColor: AppColors.white,
                        circularColor: AppColors.blueGrade2,
                        chapterName: 'Units and Measurements',
                      ),
                      CustomDivider(
                        height: height_40,
                      ),
                      CustomChapterList(
                        containerColor: _currentStep==0? AppColors.blueGrade2: AppColors.pinkGrade2,
                        containerShadowColor:_currentStep==0? AppColors.blueOpacity: AppColors.pinkOpacity,
                        circularBackColor:AppColors.white,
                        circularColor:_currentStep==0? AppColors.pinkGrade2: AppColors.blueGrade2,
                        chapterName: 'Units and Measurements',
                      ),
                    ],
                  ),

                ],
              ),
            ],
          )
      ),
    );
  }
}
