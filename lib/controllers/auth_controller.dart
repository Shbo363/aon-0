import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/link.api.dart';
import '../service/service.api.dart';

class AuthController extends GetxController {
  Api fun = Api();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  RxBool isLoading = false.obs;

  // fun for clear
  clearTexts() {
    name.clear();
    email.clear();
    pass.clear();
  }

  Future register(String trim, String data) async {
    Map data = {
      "Name": name.text,
      "email": email.text,
      "Password": pass.value,
    };
   // var response = await fun.postRequest(LinkApi.register, data);
 //   return response;
  }
}
