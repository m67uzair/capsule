import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_dropdown.dart';
import 'package:capsule/src/components/custom_textfield.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_controller.dart';
import 'package:capsule/src/features/home/navbar/navbar.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileInfoScreen extends StatelessWidget {
   ProfileInfoScreen({super.key});

  final ProfileInfoController datePickerController = Get.put(ProfileInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          onPress: (){},
          title: 'Profile',
          appBar: AppBar()),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          CustomDivider(
            height: height_20,
          ),
          CustomTextField(
              labelText: strFirstName,
              prefixIcon: null,
              obscure: false,
              height: height_0),
          CustomTextField(
              labelText: strLastName,
              prefixIcon: null,
              obscure: false,
              height: height_0),
          Obx(() => CustomTypeListField(
            onTap: ()=>datePickerController.pickDate(),
              labelText: datePickerController.selectedDate.value.toString(),
              height: height_20, )),
          CustomTextField(
              labelText: strEnterEmail,
              prefixIcon: null,
              suffixIcon: Image(image: AssetImage(ImgAssets.messageIcon)),
              obscure: false,
              height: height_0),
          Container(
            height: 85,
            child: IntlPhoneField(
              dropdownIcon: Icon(Icons.arrow_drop_down, color: AppColors.pinkGrade2,),
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
                labelStyle:  TextStyle(color: AppColors.pinkGrade2, fontWeight: fontWeight400, fontFamily: 'OpenSans', fontSize: font_12),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.pinkGrade2),
                  borderRadius: BorderRadius.circular(radius_10)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.pinkGrade2),
                    borderRadius: BorderRadius.circular(radius_10)
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.pinkGrade2),
                    borderRadius: BorderRadius.circular(radius_10)
                )
              ),
            ),
          ),

          CustomDropdown(
              name: 'gender',
              labelText: strGender,
              fontSize: font_12,
              fontWeight: fontWeight500,
              borderColor: AppColors.pinkGrade2,
              fillColor: AppColors.pinkFillColor,
              textColor: AppColors.pinkGrade2,
              labelColor: AppColors.pinkGrade2,
            //  suffixIcon: Image(image: AssetImage(ImgAssets.arrowDown)),
              radius: radius_10,
              inputType: TextInputType.text,
              icon: Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.pinkGrade2, size: font_25,),
              onChanged: (String value){},
              options: [
                "Male", "Female", "Other"
              ],
              formBuilderValidators: FormBuilderValidators.compose([FormBuilderValidators.required()]),),

          CustomDivider(
            height: height_20,
          ),

          CustomDropdown(
            name: 'select class',
            labelText: strSelectClass,
            fontSize: font_12,
            fontWeight: fontWeight500,
            borderColor: AppColors.pinkGrade2,
            fillColor: AppColors.pinkFillColor,
            textColor: AppColors.pinkGrade2,
            labelColor: AppColors.pinkGrade2,
            //  suffixIcon: Image(image: AssetImage(ImgAssets.arrowDown)),
            radius: radius_10,
            inputType: TextInputType.text,
            icon: Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.pinkGrade2, size: font_25,),
            onChanged: (String value){},
            options: [
              "11th", "12th",
            ],
            formBuilderValidators: FormBuilderValidators.compose([FormBuilderValidators.required()]),),

          CustomDivider(
            height: height_30,
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: margin_120),
            child: CustomButton(
                text: strSubmit,
                color: AppColors.white,
                fontWeight: fontWeight600,
                font: font_13,
                onPress: (){}),
          ),
          CustomDivider(
            height: height_30,
          ),
        ],
      )),

    );
  }
}


//
// Obx(() => CustomTypeListField(
// onTap: ()=>datePickerController.pickDate(),
// labelText: "${datePickerController.selectedDate.value.toLocal()}",
// prefixIcon: null,
// obscure: false,
// height: height_20, readOnly: true,),),