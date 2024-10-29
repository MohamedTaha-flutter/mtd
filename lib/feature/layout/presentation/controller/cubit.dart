import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtb/feature/home/presentation/view/home_view.dart';
import 'package:mtb/feature/layout/presentation/controller/state.dart';
import 'package:mtb/feature/notifi/prsentation/view/Noti_view.dart';
import 'package:mtb/feature/search/prsentation/view/search_view.dart';
import 'package:mtb/feature/setting/prsentation/view/setting_view.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(InitialLayoutState());

  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  changeLayoutScreen(value) {
    currentIndex = value;
    emit(ChangeBottomNavigationBarState());
  }

  List<Widget> views = [HomeView(), SearchView(), NotiView(), SettingView()];

  List<BottomNavigationBarItem> item = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz),
      label: '',
    ),
  ];
}
