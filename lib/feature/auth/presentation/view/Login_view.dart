import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtb/core/app_string/string.dart';
import 'package:mtb/core/constant/fontStyle.dart';

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
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/FINAL-LOGO.png")),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: AppString.username,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: AppString.password,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      AppString.login,
                      style: AppText.text18.copyWith(color: Colors.white),
                    ),
                  )),
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
