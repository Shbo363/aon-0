
import 'package:aon_project_0/Screens/RegisterScreen.dart';
import 'package:aon_project_0/Screens/startscreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import'Screens/RegisterScreen.dart';
late  SharedPreferences sharedPreferences;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {

  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:StartScreen(),
    );
  }
}


