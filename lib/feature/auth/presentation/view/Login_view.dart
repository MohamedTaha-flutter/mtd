import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtb/core/app_string/string.dart';
import 'package:mtb/core/constant/constant.dart';
import 'package:mtb/core/constant/fontStyle.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_button.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              authImage,
              AuthTextFormField(
                hintText: AppString.username,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 25,
              ),
              AuthTextFormField(
                hintText: AppString.password,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 50,
              ),
              AuthButton(
                buttonName: AppString.login,
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppString.forgetPassword,
                        style: AppText.text12,
                      )),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppString.notAMember,
                        style: AppText.text12,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
