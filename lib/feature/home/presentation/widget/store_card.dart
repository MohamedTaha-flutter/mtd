import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/constant.dart';
import 'package:mtb/feature/details/prsentation/view/details_view.dart';

class StoreCard extends StatelessWidget {
  final String imagePath;

  const StoreCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          goTo(context, (context) => DetailsView());
        },
        child: Container(
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
