
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_app/COSNT/style.dart';
import 'package:my_app/homescreen/homebottombar.dart';
import 'package:velocity_x/velocity_x.dart';

Widget ourButton({textColor,String? title}){
  return ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.grey,
    padding: const EdgeInsets.all(12),
  ),  
  onPressed: (){
    Get.to(() => const HomeBottom());
  },
  child: title!.text.color(textColor).fontFamily(regular).make(),
  
  );
}