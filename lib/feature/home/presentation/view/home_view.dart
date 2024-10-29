import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/colors_style.dart';
import 'package:mtb/core/constant/fontStyle.dart';
import 'package:mtb/feature/home/presentation/widget/service_card.dart';
import 'package:mtb/feature/home/presentation/widget/store_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          // Carousel Slider
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0.h),
              child: Center(
                child: CarouselSlider.builder(
                  itemCount: 10,
                  itemBuilder: (
                      BuildContext context,
                      int itemIndex,
                      int pageViewIndex,
                      ) {
                    return Container(
                      height: 250.h,
                      width: 330.w,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 8,
                            color: Colors.black.withOpacity(0.01),
                          )
                        ],
                      ),
                      child: Image(image: AssetImage("assets/images/img_1.png")),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    viewportFraction: 0.8,
                  ),
                ),
              ),
            ),
          ),
          // Services Section Title
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Services',
                    style: AppText.text18,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          // Services List as SliverList
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150.h, // Fixed height for horizontal scrolling
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                itemBuilder: (context, index) => ServiceCard(
                  title: 'First Service',
                  imagePath: 'assets/images/img_3.png',
                ),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: 10,
              ),
            ),
          ),
          // Stores Section Title
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text(
                    'Stores',
                    style: AppText.text18,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          // Stores Grid as SliverGrid
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) => StoreCard(
                  imagePath: 'assets/images/img_1.png',
                ),
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
