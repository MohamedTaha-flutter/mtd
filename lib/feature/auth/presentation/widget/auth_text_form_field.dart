import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    this.keyboardType,
    required this.hintText,
    this.controller,
    this.suffixIcon,
    this.onTap, // Make onTap optional
  });

  final TextInputType? keyboardType;
  final String hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final VoidCallback? onTap; // Make the callback type nullable

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger on tap (can be null)
      child: AbsorbPointer(
        // Prevent text input
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
