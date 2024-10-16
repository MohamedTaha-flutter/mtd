import 'package:flutter/material.dart';

import '../../../../core/constant/fontStyle.dart';
import '../../data/model/onBoarding_model.dart';

class PageViewWidget extends StatelessWidget {


  const PageViewWidget({
    super.key, required this.onBoardingData,
  }) ;
  final OnBoardingData onBoardingData;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 40,),
        Text(onBoardingData.title, textAlign: TextAlign.center,style: AppText.semiBold16,),
        Text(onBoardingData.subtitle,
          textAlign: TextAlign.center,style: AppText.smallText14,),
        SizedBox(height: 60,),
        Image.asset(onBoardingData.image)
      ],
    );
  }
}
