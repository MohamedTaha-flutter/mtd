import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/colors_style.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontSize: 18.sp)),
        backgroundColor: AppColor.mainColor,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        children: [
          _buildListTile(
            context,
            icon: Icons.language,
            text: 'Change language',
            onTap: () {
              // Add your navigation or action code here
            },
          ),
          _buildListTile(
            context,
            icon: Icons.contact_mail,
            text: 'Contact Us',
            onTap: () {
              // Add your navigation or action code here
            },
          ),
          _buildListTile(
            context,
            icon: Icons.share,
            text: 'Invite Your Friends',
            onTap: () {
              // Add your navigation or action code here
            },
          ),
          _buildListTile(
            context,
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {
              // Add your logout functionality here
            },
            showArrow: false, // Hide arrow for logout option
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context,
      {required IconData icon,
      required String text,
      required VoidCallback onTap,
      bool showArrow = true}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: AppColor.mainColor, size: 24.sp),
          title: Text(
            text, style: TextStyle(fontSize: 16.sp, color: Colors.grey[800]),
          ),
          trailing: showArrow
              ? Icon(Icons.arrow_forward_ios, color:AppColor.mainColor, size: 16.sp) : null,
          onTap: onTap,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 8.w),
          child: Divider(thickness: 1, height: 1),
        ),
      ],
    );
  }
}
