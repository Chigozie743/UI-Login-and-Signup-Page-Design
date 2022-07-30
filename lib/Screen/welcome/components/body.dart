import 'package:flutter/material.dart';
import 'package:uidesign/Screen/Login/login_page.dart';
import 'package:uidesign/Screen/welcome/components/background.dart';
import 'package:uidesign/constants.dart';
import 'package:uidesign/components/rounded_button.dart';
import 'package:uidesign/Screen/Signup/signup_page.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var children;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "WELCOME TO CAMPUS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(height: size.height * 0.07),
          Image.asset(
            "assets/images/chat2.png",
            // height: 600,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
            size: size,
          ),
          RoundedButton(
            text: 'SIGN UP',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SignUpPage();
                },
              ));
            },
            size: size,
          ),
        ]),
      ),
    );
  }
}
