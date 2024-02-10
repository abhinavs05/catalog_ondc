import 'package:flutter/material.dart';
import 'package:my_app/COSNT/const.dart';
import 'package:my_app/widget/arwidget.dart';
import 'package:my_app/widget/chatbotwidget.dart';
import 'package:my_app/widget/fitness.dart';
import 'package:my_app/widget/gamewidget.dart';
import 'package:my_app/widget/ourbutton.dart';
import 'package:velocity_x/velocity_x.dart';

class homeScreen extends StatelessWidget{
  const homeScreen ({Key? key}) : super (key : key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 19, 4, 81),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        
        child: Center(
         child: Column( 
          children: [
           20.heightBox,
            Service.text.fontFamily(regular).size(30).white.make(),
            40.heightBox,
            
           
            arWidget(),
            10.heightBox,
            ourButtonar(title: ARService,textColor:Colors.blue[900]).box.size(300, 50).make(),
            20.heightBox,
            chatbotWidget(),
            10.heightBox,
            ourButtonar(title: Chatbot,textColor:Colors.blue[900]).box.size(300, 50).make(),
            20.heightBox,
            fitnessWidget(),
            10.heightBox,
            ourButtonar(title: Fdsaitness,textColor:Colors.blue[900]).box.size(300, 50).make(),
            20.heightBox,
             
        ]),
      )
    ));
  }
}