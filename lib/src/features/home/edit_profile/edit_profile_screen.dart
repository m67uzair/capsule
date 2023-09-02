import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_textField_ep.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../components/custom_appbar.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_profile_list.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController firstName = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController classSelect = TextEditingController();
  TextEditingController areYouFrom = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
        title: strMyAc,
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            children: [
              CustomDivider(
                height: height_20,
                isDivider: false,
              ),
              CircularPercentIndicator(
                radius: 60,
                percent: .8,
                animation: true,
                reverse: true,
                startAngle: 80,
                backgroundColor: AppColors.transparent,
                progressColor: AppColors.pinkGrade2,
                circularStrokeCap: CircularStrokeCap.round,
                center: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(ImgAssets.logInArt),
                ),
              ),
              CustomDivider(
                height: height_20,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: margin_15),
                child: Column(
                  children: [
                    CustomTextFieldEP(
                      controller: firstName,
                        labelText: 'What’s your first name ?',
                        obscure: false,
                        height: height_10),

                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.pinkGrade2, // Set your desired left border color here
                            width: 2,
                          ),
                        ),
                      ),
                      child: IntlPhoneField(

                        controller: number,

                        dropdownIcon: Icon(Icons.arrow_drop_down, color: AppColors.pinkGrade2,),
                        disableLengthCheck: true,
                        pickerDialogStyle: PickerDialogStyle(
                          countryNameStyle: TextStyle(color: AppColors.pinkGrade2, fontFamily: 'OpenSans', fontWeight: fontWeight600),
                          countryCodeStyle: TextStyle(color: AppColors.black, fontFamily: 'OpenSans', fontWeight: fontWeight800),
                        ),
                        dropdownTextStyle: TextStyle(color: AppColors.pinkGrade2, fontFamily: 'OpenSans', fontWeight: fontWeight600),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        cursorColor: AppColors.pinkGrade2,
                        style: TextStyle(color: AppColors.pinkGrade2, fontWeight: fontWeight400, fontFamily: 'OpenSans', fontSize: font_13),
                        decoration: InputDecoration(
                            fillColor: AppColors.pinkFillColor,
                            filled: true,
                            labelText: strMobileNo,
                            labelStyle:  TextStyle(color: AppColors.black, fontWeight: fontWeight400, fontFamily: 'OpenSans', fontSize: font_12),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(radius_10), topLeft: Radius.circular(radius_10)),
                                borderSide: BorderSide(color: AppColors.transparent)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(radius_10), topLeft: Radius.circular(radius_10)),
                                borderSide: BorderSide(color: AppColors.transparent)
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(radius_10), topLeft: Radius.circular(radius_10)),
                                borderSide: BorderSide(color: AppColors.transparent)
                            )
                        ),
                      ),
                    ),

                    CustomDivider(
                      height: height_10,
                      isDivider: false,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.pinkGrade2, // Set your desired left border color here
                            width: 2,
                          ),
                        ),
                      ),
                      child: CustomDropdown(
                        name: 'gender',
                        labelText: strGender,
                        fontSize: font_12,
                        fontWeight: fontWeight500,
                        borderColor: AppColors.transparent,
                        fillColor: AppColors.pinkFillColor,
                        textColor: AppColors.black,
                        labelColor: AppColors.black,
                        //  suffixIcon: Image(image: AssetImage(ImgAssets.arrowDown)),
                        radius: radius_10,
                        inputType: TextInputType.text,
                        icon: Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.pinkGrade2, size: font_25,),
                        onChanged: (String value){},
                        options: [
                          "Male", "Female", "Other"
                        ],
                        formBuilderValidators: FormBuilderValidators.compose([FormBuilderValidators.required()]),),
                    ),

                    CustomDivider(
                      height: height_10,
                      isDivider: false,
                    ),


                    CustomTextFieldEP(
                      controller: email,
                        labelText: 'What’s your Email Address ?',
                        obscure: false,
                        height: height_10),
                    CustomTextFieldEP(
                      controller: classSelect,
                        labelText: 'Which class are you in ?',
                        obscure: false,
                        height: height_10),
                    CustomTextFieldEP(
                      controller: areYouFrom,
                        labelText: 'Where are you From ?',
                        obscure: false,
                        height: height_10),

                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: margin_100),
                child: CustomButton(
                    text: 'Update',
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_15,
                    onPress: (){}),
              ),
              CustomDivider(
                height: height_60,
                isDivider: false,
              ),
            ],
          )
      ),
    );
  }
}
