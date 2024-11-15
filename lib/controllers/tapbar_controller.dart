import 'dart:ui';

import 'package:get/get.dart';

class TabbarController extends GetxController{

  var selectedindex =0.obs;

  var tabcolors= <Color>[
    Color(0xffEBEBEB),
    Color(0xffEBEBEB),
    Color(0xffEBEBEB),
  ].obs;

  void selectedTab (int index){
    selectedindex.value=index;

    for (int i=0; i<tabcolors.length; i++ ){
      if (i==index){
        tabcolors[i]=Color(0xffEBEBEB);
      }else {
        tabcolors[i] = Color(0xffEBEBEB);
      }
    }
  }
}