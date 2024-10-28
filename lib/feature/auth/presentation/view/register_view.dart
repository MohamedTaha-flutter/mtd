import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mtb/core/app_string/string.dart';
import 'package:mtb/core/constant/constant.dart';
import 'package:mtb/core/constant/fontStyle.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_button.dart';
import 'package:mtb/feature/auth/presentation/widget/auth_text_form_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController profilePicture = TextEditingController();

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();

    // Show the dialog to choose between camera and gallery
    final pickedFile = await showDialog<XFile>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an option'),
          actions: [
            TextButton(
              onPressed: () async {
                final image =
                    await picker.pickImage(source: ImageSource.camera);
                Navigator.of(context).pop(image);
              },
              child: Text('Camera'),
            ),
            TextButton(
              onPressed: () async {
                final image =
                    await picker.pickImage(source: ImageSource.gallery);
                Navigator.of(context).pop(image);
              },
              child: Text('Gallery'),
            ),
          ],
        );
      },
    );

    // Check if pickedFile is not null after the dialog is closed
    if (pickedFile != null) {
      setState(() {
        profilePicture.text =
            pickedFile.path; // Set the path in the TextEditingController
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Logo
                  authImage,
                  //name
                  AuthTextFormField(
                    hintText: AppString.name,
                    keyboardType: TextInputType.text,
                    controller: nameController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //phone number
                  Row(
                    children: [
                      Container(
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/img.png"),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(width: 15.w),
                      // optional, for some spacing between the image and the text field
                      Expanded(
                        child: AuthTextFormField(
                          hintText: AppString.mobileNumber,
                          keyboardType: TextInputType.phone,
                          // use TextInputType.phone for mobile numbers
                          controller: mobileNumber,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //email
                  AuthTextFormField(
                    hintText: AppString.email,
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //password
                  AuthTextFormField(
                    hintText: AppString.password,
                    keyboardType: TextInputType.emailAddress,
                    controller: password,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //Camera
                  AuthTextFormField(
                    hintText: AppString.profilePicture,
                    keyboardType: TextInputType.none,
                    // Set to none to avoid showing the keyboard
                    controller: profilePicture,
                    suffixIcon: Icon(Icons.camera_alt_rounded),
                    onTap: _pickImage, // Call the pick image method
                  ),

                  SizedBox(
                    height: 30.h,
                  ),
                  AuthButton(
                    buttonName: AppString.register,
                  ),
                  //already have an account
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        AppString.alreadyHaveAnAccount,
                        style: AppText.text12,
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
