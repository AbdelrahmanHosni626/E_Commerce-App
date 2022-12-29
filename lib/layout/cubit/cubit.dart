import 'package:e_commerce_app/layout/cubit/states.dart';
import 'package:e_commerce_app/modules/category/category_screen.dart';
import 'package:e_commerce_app/modules/favorite/favorite_screen.dart';
import 'package:e_commerce_app/modules/home/home_screen.dart';
import 'package:e_commerce_app/modules/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates>
{
  HomeLayoutCubit() : super(HomeLayoutInitialState());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);


  List<Widget> screens =
  [
    HomeScreen(),
    CategoryScreen(),
    FavoriteScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    'Home',
    'Categories',
    'Favorites',
    'Settings',
  ];


  int currentIndex = 0;
  void changeBottomNavBar(int index)
  {
    currentIndex = index;
    emit(HomeLayoutChangeBottomNavBarState());
  }
}