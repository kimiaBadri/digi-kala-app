import 'dart:ui';
import 'package:digi_kala_project/constants/colors.dart';
import 'package:digi_kala_project/screens/category_screen.dart';
import 'package:digi_kala_project/screens/home_screen.dart';
import 'package:digi_kala_project/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selecBottomNavigationState = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColor.backGroundScreen,
        appBar: AppBar(),
        body: IndexedStack(
          index: selecBottomNavigationState,
          children: getScreen(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: BottomNavigationBar(
              currentIndex: selecBottomNavigationState,
              onTap: (int index) {
                setState(() {
                  selecBottomNavigationState = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedLabelStyle: TextStyle(
                fontFamily: 'SB',
                fontSize: 10,
                color: Colors.black,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'SB',
                fontSize: 10,
                color: CustomColor.grey,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_profile.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_profile_active.png'),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: CustomColor.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13))
                        ],
                      ),
                    ),
                  ),
                  label: 'حساب کاربری',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_basket.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_basket_active.png'),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: CustomColor.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13))
                        ],
                      ),
                    ),
                  ),
                  label: 'سبد خرید',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_category (1).png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child:
                          Image.asset('assets/images/icon_category_active.png'),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: CustomColor.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13))
                        ],
                      ),
                    ),
                  ),
                  label: 'دسته بندی',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_home.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child: Image.asset('assets/images/icon_home_active.png'),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: CustomColor.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13))
                        ],
                      ),
                    ),
                  ),
                  label: 'خانه',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getScreen() {
    return <Widget>[
      CategoryScreen(),
      HomeScreen(),
      ProductListScreen(),
      CategoryScreen()
    ];
  }
}
