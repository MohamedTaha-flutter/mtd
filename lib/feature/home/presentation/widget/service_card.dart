import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/constant.dart';
import 'package:mtb/feature/details/prsentation/view/details_view.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const ServiceCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: ()
            {
              goTo(context, (context)=>DetailsView());
            },
            child: Container(
              height: 120.h,
              width: 120.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath,),
                  fit: BoxFit.fill,

                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(title),
        ],
      ),
    );
  }
}
