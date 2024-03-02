import 'package:digi_kala_project/widgets/product_item.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

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
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon_apple_blue.png'),
                        Expanded(
                          child: Text(
                            'پر فروش ترین ها',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 16,
                                color: CustomColor.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 44,
              ),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ProductItem();
                  },
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 2.8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
