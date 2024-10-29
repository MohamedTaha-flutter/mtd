import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/colors_style.dart';
import 'package:mtb/core/constant/fontStyle.dart';



class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        title: Text('Store Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.asset(
                'assets/images/img_1.png', // Update with your actual image path
                fit: BoxFit.cover,
                height: 200.h, // Adjust height responsively
                width: double.infinity,

              ),
            ),
            SizedBox(height: 16.0.h),
            // Details Section
            Text("Details",style: AppText.text18,),
            Text("Details Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s...",style: AppText.smallText14,),
            SizedBox(height: 16.0.h),

            // Services Section
            Text("Services",style: AppText.text18,),
            Text("Services Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text...",style: AppText.smallText14,),
            SizedBox(height: 16.0.h),
            // About Section
            Text("About Store",style: AppText.text18,),
            Text("About Store Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text...",style: AppText.smallText14,),

          ],
        ),
      ),
    );
  }
}


