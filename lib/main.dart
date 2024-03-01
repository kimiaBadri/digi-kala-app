import 'package:digi_kala_project/constants/colors.dart';
import 'package:digi_kala_project/widgets/banner_slider.dart';
import 'package:digi_kala_project/widgets/product_item.dart';
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
                            'جستو جوی محصولات',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 16,
                                color: CustomColor.grey),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/icon_search.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: CustomColor.grey),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CategoryHorizontalItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'مشاهده همه ',
                      style:
                          TextStyle(fontFamily: 'SB', color: CustomColor.blue),
                    ),
                    Spacer(),
                    Text(
                      'پرفروش ترین',
                      style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: CustomColor.grey),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 44, right: 44, bottom: 20, top: 32),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'مشاهده همه ',
                      style:
                          TextStyle(fontFamily: 'SB', color: CustomColor.blue),
                    ),
                    Spacer(),
                    Text(
                      'پر بازدید ترین',
                      style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: CustomColor.grey),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        )
            // child: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 44),
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return CategoryHorizontalItem();
            //     },
            //   ),
            // ),
            ),
      ),
    );
  }
}

class CategoryHorizontalItem extends StatelessWidget {
  const CategoryHorizontalItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: ShapeDecoration(
                shadows: const [
                  BoxShadow(
                    color: CustomColor.indicatorColor,
                    blurRadius: 50,
                    spreadRadius: -12,
                    offset: Offset(0.0, 15.0),
                  )
                ],
                color: CustomColor.indicatorColor,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            const Icon(
              Icons.mouse,
              color: Colors.white,
              size: 32,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'همه',
          style: TextStyle(
            fontFamily: 'SB',
          ),
        ),
      ],
    );
  }
}
