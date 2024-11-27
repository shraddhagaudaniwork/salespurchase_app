import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController{
  TextEditingController firstnameController = TextEditingController();
  TextEditingController phonenonameController = TextEditingController();
  TextEditingController emailnameController = TextEditingController();
  // TextEditingController firstnameController = TextEditingController();
  GlobalKey<FormState> signuprformkey = GlobalKey<FormState>();

  var isChecked = false.obs;

  // Method to toggle checkbox value
  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }

}

