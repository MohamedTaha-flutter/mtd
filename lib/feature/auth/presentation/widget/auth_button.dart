import 'package:flutter/material.dart';
import 'package:mtb/core/constant/fontStyle.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.buttonName,
  });

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            buttonName,
            style: AppText.text18.copyWith(color: Colors.white),
          ),
        ));
  }
}
