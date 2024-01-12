import 'package:cinemixe/core/contants/login_page/constants.dart';
import 'package:cinemixe/core/theme/app_theme.dart';
import 'package:cinemixe/core/widgets/text_flied.dart';
import 'package:cinemixe/feactures/authenthication/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usercontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          //sized box
          SizedBox(
            height: AppTheme.of(context).spaces.space_900,
          ),

          //textfield for email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFieldWidget(
                controller: usercontroller,
                hinttText: Loginpagetext.textfliedemail,
                prefixxIcon: Loginpagetext.emailprefixicon),
          ),

          //sized box
          SizedBox(
            height: AppTheme.of(context).spaces.space_400,
          ),

          //text field for password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFieldWidget(
              controller: passwordcontroller,
              hinttText: Loginpagetext.textfliedpassword,
              prefixxIcon: Loginpagetext.passwordprefixicon,
              suffixxIcon: Loginpagetext.passwordsuffixicon,
            ),
          ),

          //sized box
          SizedBox(
            height: AppTheme.of(context).spaces.space_400,
          ),

          //login button
          SignupLoginButton(buttonText: Loginpagetext.buttonlogin)
        ],
      ),
    );
  }
}
