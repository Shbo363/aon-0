
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../link.api.dart';
import '../service.api.dart';

class AuthController extends GetxController {
  Crud fun = Crud();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  RxBool isLoading = false.obs;

  // fun to clear texts after dispose
  clearTexts() {
    name.clear();
    email.clear();
    pass.clear();
  }


  // future for register user
  Future register() async {
    Map data = {
      "name": name.text,
      "email": email.text,
      "pass": pass.text,
    };
    var response = await fun.postRequest(linkRigster, data);
    return response;
  }
}