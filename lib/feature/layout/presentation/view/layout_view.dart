import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtb/core/constant/colors_style.dart';
import 'package:mtb/feature/layout/presentation/controller/cubit.dart';
import 'package:mtb/feature/layout/presentation/controller/state.dart';


class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              unselectedItemColor: AppColor.gray,
              selectedItemColor: AppColor.mainColor,
              currentIndex: cubit.currentIndex,
              onTap: (index)
              {
                cubit.changeLayoutScreen(index);
              },
              items: cubit.item,
            ),
            body: cubit.views[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
