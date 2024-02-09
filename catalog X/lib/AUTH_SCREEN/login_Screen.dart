import 'package:flutter/material.dart';
import 'package:my_app/AUTH_SCREEN/custom_TextBox.dart';
import 'package:my_app/COSNT/const.dart';
import 'package:my_app/widget/Button.dart';
import 'package:my_app/widget/appiconwidget.dart';
import 'package:velocity_x/velocity_x.dart';
class loginScreen extends StatelessWidget{
  const loginScreen ({Key? key}) : super (key : key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 19, 4, 81),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            100.heightBox,
            appiconWidget(),
            20.heightBox,
            appName.text.fontFamily(regular).size(30).white.make(),
            10.heightBox,
            Column(
              children: [
                CustomTextField(title: username,hint: namehint),
                CustomTextField(title: Password,hint: PasswordHint),
                5.heightBox,
                ourButton(title: Login,textColor:Colors.blue[900]).box.padding(const EdgeInsets.all(20)).make(),
                
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(5)).make(),       
        ]),
      )
    );
  }
}