import 'package:digi_kala_project/widgets/header.dart';
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
              child: Header(
                text: 'دسته بندی',
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
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
