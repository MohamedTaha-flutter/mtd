import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/app_string/string.dart';
import 'package:mtb/core/constant/constant.dart';
import 'package:mtb/core/constant/fontStyle.dart';
import 'package:mtb/feature/auth/presentation/view/forget_password.dart';
import 'package:mtb/feature/auth/presentation/view/register_view.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_button.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                height: 25.h,
              ),
              AuthTextFormField(
                hintText: AppString.password,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 50.h,
              ),
              AuthButton(
                buttonName: AppString.login,
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        goTo(context, (context) => ForgetPasswordView());
                      },
                      child: Text(
                        AppString.forgetPassword,
                        style: AppText.text12,
                      )),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        goTo(context, (context) => RegisterView());
                      },
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
