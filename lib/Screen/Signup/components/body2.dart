import 'package:flutter/material.dart';
import 'package:uidesign/Screen/Login/components/rounded_input_field.dart';
import 'package:uidesign/Screen/Login/login_page.dart';
import 'package:uidesign/Screen/Signup/components/background2.dart';
import 'package:uidesign/Screen/Signup/components/or_divider.dart';
import 'package:uidesign/Screen/Signup/components/rounded_name_field.dart';
import 'package:uidesign/components/already_have_an_account_check.dart';
import 'package:uidesign/components/rounded_button.dart';
import 'package:uidesign/components/rounded_password_field.dart';
// import 'package:uidesign/Screen/Login/components/body1.dart';
import 'package:uidesign/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGNUP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          Image.asset(
            "assets/images/sign_up.png",
            height: size.height * 0.3,
          ),
          RoundedNameField(
            hintText: "Name",
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
            size: size,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
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
          ),
          orDivider(),
        ],
      ),
    );
  }
}
