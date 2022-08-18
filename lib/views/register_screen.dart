import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/login_widget.dart';
import '../widgets/logo.dart';
import '../widgets/registrater_options_button.dart';
import '../widgets/signup_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isLoginIn = true; 

  changeDisplayedRegisterWidget() => isLoginIn = !isLoginIn; 

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: size.width * .2),
            Logo(),
            SizedBox(height: 30),
            Visibility(
              visible:
                  isLoginIn,
              child: LogInWidget(),
            ),
            Visibility(
              visible: !isLoginIn,
              child:
                  SignUpWidget(), 
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: black.withOpacity(.5),
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or',
                      style: TextStyle(color: black.withOpacity(.7)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: black.withOpacity(.5),
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Visibility(
              visible: isLoginIn, 
              child: Align(
                alignment: Alignment.centerLeft,
                child: RegistraterOptionsButton(
                  onTap: () {
                    setState(() =>
                        changeDisplayedRegisterWidget());
                  },
                  text1: "Don't have an account? ",
                  text2: "Create account!",
                ),
              ),
            ),
            Visibility(
              visible:
                  !isLoginIn, 
              child: Align(
                alignment: Alignment.centerLeft,
                child: RegistraterOptionsButton(
                  onTap: () {
                    setState(() =>
                        changeDisplayedRegisterWidget());
                  },
                  text1: "Already have an account? ",
                  text2: "Sign in!",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
