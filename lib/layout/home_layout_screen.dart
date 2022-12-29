import 'package:e_commerce_app/layout/cubit/cubit.dart';
import 'package:e_commerce_app/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayoutScreen extends StatelessWidget {
  HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeLayoutCubit(),
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = HomeLayoutCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text(cubit.titles[cubit.currentIndex])),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index){
                cubit.changeBottomNavBar(index);
              },
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home_filled,
                  ),
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.category_outlined,
                  ),
                  icon: Icon(
                    Icons.category_outlined,
                  ),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.favorite_border_outlined,
                  ),
                  icon: Icon(
                    Icons.favorite_border_outlined,
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.settings_outlined,
                  ),
                  icon: Icon(
                    Icons.settings_outlined,
                  ),
                  label: 'Settings',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
