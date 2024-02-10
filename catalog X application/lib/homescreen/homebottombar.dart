import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/COSNT/const.dart';
import 'package:my_app/homescreen/home.dart';
import 'package:my_app/homescreen/homecontroller.dart';
import 'package:my_app/profile.dart/profile.dart';


class HomeBottom extends StatelessWidget{
  const HomeBottom ({Key? key}) : super (key : key);
  
 
  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());
    var navbaritem =[
      BottomNavigationBarItem(icon: Image.asset(homeicon, width: 25),label : home),
      BottomNavigationBarItem(icon: Image.asset(profileicon, width: 25),label : Profile),
    ];

    var navBody = [
      homeScreen(),
      profileScreen(),

    ];


    return Scaffold(
      body: Column(
        children: [
         Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),))],),
      bottomNavigationBar: Obx(() => 
      BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value,
        selectedItemColor:Colors.white,
        selectedLabelStyle: const TextStyle(fontFamily: italic),
        type: BottomNavigationBarType.fixed, 
        backgroundColor: Colors.blue[900],
        items: navbaritem,
        onTap: (value) {
          controller.currentNavIndex.value = value;
        },
      )),
      );
  }
}