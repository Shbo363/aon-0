
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/link.api.dart';
import '../service/service.api.dart';

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



  Future register() async {
    Map data = {
      "name": name.text,
      "email": email.text,
      "pass": pass.text,
    };
    var response = await fun.postRequest(LinkApi.register, data);
    return response;
  }
}