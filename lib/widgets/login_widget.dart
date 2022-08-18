import 'package:flutter/material.dart';

import 'registration_button.dart';
import 'registration_text_field.dart';
import 'welcome_dialog.dart';

class LogInWidget extends StatelessWidget {
  const LogInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    TextEditingController emailEditingController = TextEditingController();
    TextEditingController passwordEditingController = TextEditingController();

    getTextFieldsValues() {
      print('Login email is: ${emailEditingController.text}');
      print('Login password is: ${passwordEditingController.text}');
    }

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        WelcomeDialog(
          text1: 'Welcome back,',
          text2:
              'We are happy to see you here again. Enter your email address and password',
        ),
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegistrationTextField(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              textEditingController: emailEditingController,
              obscureText: false,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegistrationTextField(
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              textEditingController: passwordEditingController,
              obscureText: true,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: RegistrationButton(
            width: size.width * .85,
            height: 50,
            label: 'Login',
            press: () => getTextFieldsValues(),
          ),
        )
      ],
    );
  }
}
