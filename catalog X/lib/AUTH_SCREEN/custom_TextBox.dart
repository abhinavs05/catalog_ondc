import 'package:flutter/material.dart';
import 'package:my_app/COSNT/const.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomTextField({String? title, String? hint, controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.blueAccent).fontFamily(regular).size(20).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: italic,
            color: Colors.blueAccent,
          ),
          hintText: hint,
          isDense: true,
          fillColor: Color.fromARGB(179, 140, 150, 204),
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent)),


        ),
      )
    ],
  );
}