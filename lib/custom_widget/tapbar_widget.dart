
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/tapbar_controller.dart';

class Tapbar extends StatefulWidget {
  final List<String> text;



  Tapbar({
    required this.text,
  });
  @override
  State<Tapbar> createState() => _TapbarState();
}

class _TapbarState extends State<Tapbar> {
  TabbarController tabcontroll =Get.put(TabbarController());
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection:Axis.horizontal ,
        child: Row(
          children: widget.text.map((item){
            return
              Container(
                width: 90,
                height: 32,
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffE7ECF3),
                    borderRadius: BorderRadius.circular(20)
                ),
                child:
                Center(
                  child: Text(item,
                    style: TextStyle(

                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff5376AC)
                    ),
                  ),
                ),
              );
          }).toList(),
        ),

      );
  }
}