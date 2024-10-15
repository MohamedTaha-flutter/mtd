import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtb/core/app_string/string.dart';
import 'package:mtb/core/constant/fontStyle.dart';

import '../../data/model/onBoarding_model.dart';
import '../widget/pageView_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final List<OnBoardingData> _list = _onBoardingList();
  PageController pageController = PageController();
  int currentIndex = 0;

  List<OnBoardingData> _onBoardingList() =>
      [
        OnBoardingData(
          title: AppString.onBoardingTitle1,
          subtitle: AppString.onBoardingSubTitle1,
          image: "assets/images/logo.png",
        ),
        OnBoardingData(
          title: AppString.onBoardingTitle2,
          subtitle: AppString.onBoardingSubTitle2,
          image: "assets/images/logo2.png",
        ),
        OnBoardingData(
          title: AppString.onBoardingTitle3,
          subtitle: AppString.onBoardingSubTitle3,
          image: "assets/images/logo3.png",
        ),
        OnBoardingData(
          title: AppString.onBoardingTitle4,
          subtitle: AppString.onBoardingSubTitle4,
          image: "assets/images/logo4.png",
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PageView.builder(
          itemCount: _list.length,
          physics: BouncingScrollPhysics(),
          controller: pageController,
          onPageChanged: (index) => currentIndex = index,
          itemBuilder: (BuildContext context, int index) =>
              PageViewWidget(onBoardingData: _list[index],),
        ),
      ),
    );
  }
}


