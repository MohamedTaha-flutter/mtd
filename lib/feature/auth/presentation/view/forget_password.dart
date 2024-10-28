import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/app_string/string.dart';
import 'package:mtb/core/constant/fontStyle.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_button.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_text_form_field.dart';

import '../../../../core/constant/constant.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            authImage,
            SizedBox(
              height: 15.h,
            ),
            AuthTextFormField(
              hintText: AppString.email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 40.h,
            ),

            AuthButton(
              buttonName: AppString.resetPassword,
              onPressed: () {},
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  AppString.didNotReceive,
                  style: AppText.text12,
                )),
          ],
        ),
      ),
    );
  }
}
