import 'package:flutter/material.dart';
import 'package:mtb/core/constant/colors_style.dart';
import 'package:mtb/core/constant/fontStyle.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.buttonName,
    this.onPressed,
  });

  final String buttonName;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
              AppColor.mainColor), // Set your desired color
        ),
        onPressed: onPressed, // Ensure this is set properly
        child: Text(
          buttonName,
          style: AppText.text18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
