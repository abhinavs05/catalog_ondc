
import 'package:flutter/material.dart';
import 'package:my_app/COSNT/const.dart';
import 'package:velocity_x/velocity_x.dart';

Widget bgWidget({required Scaffold child, required Color backgroundColor}){
  return Image.asset(bgimage).box.size(1000,1000).padding(const EdgeInsets.all(0)).make();

}