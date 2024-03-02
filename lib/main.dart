import 'dart:ui';

import 'package:digi_kala_project/constants/colors.dart';
import 'package:digi_kala_project/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColor.backGroundScreen,
        appBar: AppBar(),
        body: ProductListScreen(),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image.asset('assets/images/icon_home.png'),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: CustomColor.blue,
                          blurRadius: 20,
                          spreadRadius: -7,
                          offset: Offset(0.0, 13))
                    ]),
                  ),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_home.png'),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_home.png'),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_home.png'),
                  label: 'home',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
