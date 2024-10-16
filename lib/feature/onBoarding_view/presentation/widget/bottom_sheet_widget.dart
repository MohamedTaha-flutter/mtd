import 'package:flutter/material.dart';
import 'package:mtb/feature/onBoarding_view/data/model/onBoarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/app_string/string.dart';
import '../../../../core/constant/fontStyle.dart';
import '../../../auth/presentation/view/Login_view.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.currentIndex,
    required PageController pageController,
    required List<OnBoardingData> list,
  }) : _pageController = pageController, _list = list;

  final int currentIndex;
  final PageController _pageController;
  final List<OnBoardingData> _list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginView()));
                },
                child: Text(
                  AppString.skip,
                  textAlign: TextAlign.end,
                  style: AppText.mediumText16,
                )),
          ),
          Spacer(),
          Container(
            height: 52,
            width: double.infinity,
            color: Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (currentIndex > 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: SizedBox(
                    height: 52,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _list.length,
                  effect: WormEffect(
                      dotColor: Colors.white30,
                      activeDotColor: Colors.white,
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 16),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (currentIndex < _list.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeIn,
                      );
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginView()));
                    }
                  },
                  child: SizedBox(
                    height: 52,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
