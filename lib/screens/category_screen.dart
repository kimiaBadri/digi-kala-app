import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backGroundScreen,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 44, right: 44, bottom: 32, top: 20),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(children: [
                      Image.asset('assets/images/icon_apple_blue.png'),
                      Expanded(
                        child: Text(
                          'دسته بندی',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: 'SB',
                              fontSize: 16,
                              color: CustomColor.blue),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
