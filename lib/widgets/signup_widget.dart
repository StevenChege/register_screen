import 'package:flutter/material.dart';

import 'registration_button.dart';
import 'registration_text_field.dart';
import 'welcome_dialog.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    TextEditingController nameEditingController = TextEditingController();
    TextEditingController emailEditingController = TextEditingController();
    TextEditingController passwordEditingController = TextEditingController();

    getTextFieldsValues() {
      print('SignUp name is: ${nameEditingController.text}');
      print('SignUp email is: ${emailEditingController.text}');
      print('SignUp password is: ${passwordEditingController.text}');
    }

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        WelcomeDialog(
            text1: 'Create an account',
            text2:
                'Create your account, it takes less than a minute. Enter your name, email and password'),
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegistrationTextField(
              hintText: 'Name',
              keyboardType: TextInputType.name,
              textEditingController: nameEditingController,
              obscureText: false,
            ),
          ],
        ),
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
            label: 'Register',
            press: () => getTextFieldsValues(),
          ),
        )
      ],
    );
  }
}
