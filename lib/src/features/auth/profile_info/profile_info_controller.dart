import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfoController extends GetxController{

  Rx<DateTime> selectedDate = DateTime.now().obs;

  RxList gender = ["Male", "Female"].obs;

  void pickDate() async {
  DateTime? picked = await showDatePicker(
  context: Get.context!,
  initialDate: selectedDate.value,
  firstDate: DateTime(1990),
  lastDate: DateTime(2101),
  );
  if (picked != null && picked!=selectedDate.value) {

    selectedDate.value = picked;
  }
  }

}