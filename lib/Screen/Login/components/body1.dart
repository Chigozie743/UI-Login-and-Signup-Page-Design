import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/Screen/Login/components/background1.dart';
import 'package:uidesign/Screen/Login/components/rounded_input_field.dart';
import 'package:uidesign/Screen/Login/components/text_field_container.dart';
import 'package:uidesign/Screen/Signup/signup_page.dart';
import 'package:uidesign/components/already_have_an_account_check.dart';
import 'package:uidesign/components/rounded_button.dart';
import 'package:uidesign/components/rounded_password_field.dart';
import 'package:uidesign/constants.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  // // TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            "assets/images/sit_login.png",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (String value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
            size: size,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
