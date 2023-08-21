import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_color_code_Indicator.dart';
import 'package:capsule/src/components/custom_review_answere_widget.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:capsule/src/features/review_answere/review_answer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ReviewAnswerScreen extends GetView<ReviewAnswerController> {
  ReviewAnswerScreen({Key? key}) : super(key: key);

  List<ChartData> data = [
    ChartData('Correct', 0.33, "33%", AppColors.lightGreen),
    ChartData('Incorrect', 0.33, "33%", AppColors.redColor),
    ChartData('Skipped', 0.33, "33%", AppColors.pinkGrade2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: strReviewAnswer,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        child: ListView(
          children: [
            SfCircularChart(
              series: <CircularSeries>[
                DoughnutSeries<ChartData, String>(
                    xValueMapper: (ChartData data, _) => data.category,
                    yValueMapper: (ChartData data, _) => data.value,
                    pointColorMapper: (ChartData data, _) => data.color,
                    dataLabelMapper: (ChartData data, _) => data.percent,
                    startAngle: 190,
                    endAngle: 190,
                    radius: "90%",
                    innerRadius: "75%",
                    dataLabelSettings: DataLabelSettings(
                      angle: 0,
                      isVisible: true,
                      showZeroValue: false,
                      alignment: ChartAlignment.center,
                      labelPosition: ChartDataLabelPosition.inside,
                      labelAlignment: ChartDataLabelAlignment.auto,
                      labelIntersectAction: LabelIntersectAction.shift,
                      textStyle: TextStyle(
                        fontWeight: fontWeight600,
                        fontSize: font_10,
                        color: AppColors.black,
                      ),
                    ),
                    dataSource: data),
              ],
            ),
            SizedBox(
              height: height_15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomColorCodeIndicator(color: AppColors.lightGreen, title: 'Correct'),
                CustomColorCodeIndicator(color: AppColors.redColor, title: 'Incorrect'),
                const CustomColorCodeIndicator(color: AppColors.graphPink, title: 'Skipped'),
              ],
            ),
            SizedBox(
              height: height_15,
            ),
            const ReviewQuestionWidget(
              questionIndex: 1,
              optionA: 'Distance',
              optionB: 'More Distance',
              optionC: 'More and '
                  'more distance',
              optionD: 'Too much distance',
              optionAImage: ImgAssets.optionImg,
              optionBImage: ImgAssets.optionImg,
              optionCImage: ImgAssets.optionImg,
              optionDImage: ImgAssets.optionImg,
              questionString: 'Which one of these is the most distance?',
              solutionImagePath: ImgAssets.solutionImg,
            ),
            SizedBox(
              height: height_25,
            ),
            const ReviewQuestionWidget(
              questionIndex: 2,
              questionString: 'What is the distance from earth to moon',
              optionA: 'The distance from earth to moon cant be measured',
              optionB: 'The distance from earth to moon can be measured but i don\'t know it',
              optionC: 'I\'ts one thousand miles',
              optionD: '384,400 km',
              solutionImagePath: ImgAssets.solutionImg,
            ),
          ],
        ),
      ),
    );
  }
}


// class CustomOptionWidget extends StatelessWidget {
//   const CustomOptionWidget({
//     super.key,
//     required this.optionIndex,
//     required this.optionTitle,
//     this.optionImagePath,
//   });
//
//   final String optionIndex;
//   final String optionTitle;
//   final String? optionImagePath;
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomText(
//             text: '($optionIndex)',
//             textColor: AppColors.black,
//             fontSize: font_17,
//             fontWeight: fontWeight600,
//           ),
//           SizedBox(
//             width: width_2,
//           ),
//           Column(
//             children: [
//               Expanded(
//                 child: CustomText(
//                   text: optionTitle,
//                   textColor: AppColors.black,
//                   fontSize: font_17,
//                   fontWeight: fontWeight600,
//                   maxLines: 2,
//                   softwrap: true,
//                 ),
//               ),
//               SizedBox(
//                 height: height_15,
//               ),
//               if (optionImagePath != null)
//                 Image.asset(
//                   optionImagePath.toString(),
//                   width: width_125,
//                   height: width_125,
//                   fit: BoxFit.cover,
//                 )
//               else
//                 const SizedBox.shrink(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class RectangleIconButton extends StatelessWidget {
  const RectangleIconButton({
    super.key,
    required this.iconImagePath,
    required this.onPressed,
  });

  final String iconImagePath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(margin_10),
        decoration: const BoxDecoration(color: AppColors.pinkGrade2, shape: BoxShape.circle),
        child: Image.asset(
          iconImagePath,
          color: Colors.white,
          width: width_25,
          height: height_25,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ChartData {
  final String category;
  final double value;
  final String percent;
  final Color color;

  ChartData(
    this.category,
    this.value,
    this.percent,
    this.color,
  );
}
