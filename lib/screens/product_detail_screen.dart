import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: CustomColor.backGroundScreen,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 44, right: 44, bottom: 24, top: 20),
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
                            'آیفون',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 16,
                                color: CustomColor.blue),
                          ),
                        ),
                        Image.asset('assets/images/icon_back.png'),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'SE 2022 آیفون',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Container(
                  height: 284,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 190, 189, 189),
                          blurRadius: 10,
                          offset: Offset(1, 8),
                          spreadRadius: 0.5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/icon_star.png'),
                              Text(
                                '4.6',
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                  height: double.infinity,
                                  child:
                                      Image.asset('assets/images/iphone.png')),
                              Spacer(),
                              Image.asset(
                                  'assets/images/icon_favorite_deactive.png')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 44, right: 44),
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: CustomColor.grey,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child:
                                      Image.asset('assets/images/iphone.png'),
                                ),
                              );
                            },
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 44, right: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'انتخاب رنگ',
                      style: TextStyle(fontFamily: 'SM', fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.red),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 44, right: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'انتخاب حافظه داخلی',
                      style: TextStyle(fontFamily: 'SM', fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border:
                                  Border.all(width: 1, color: CustomColor.grey),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            child: Center(
                              child: Text(
                                '128',
                                style:
                                    TextStyle(fontFamily: 'SB', fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border:
                                  Border.all(width: 1, color: CustomColor.grey),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            child: Center(
                              child: Text(
                                '128',
                                style:
                                    TextStyle(fontFamily: 'SB', fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border:
                                  Border.all(width: 1, color: CustomColor.grey),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            child: Center(
                              child: Text(
                                '128',
                                style:
                                    TextStyle(fontFamily: 'SB', fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(left: 44, right: 44, top: 20),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: CustomColor.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'مشاهده',
                        style: TextStyle(
                            fontFamily: 'SB',
                            fontSize: 12,
                            color: CustomColor.blue),
                      ),
                      Spacer(),
                      Text(
                        ': مشخضات فنی',
                        style: TextStyle(fontFamily: 'SM', color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(left: 44, right: 44, top: 10),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: CustomColor.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'مشاهده',
                        style: TextStyle(
                            fontFamily: 'SB',
                            fontSize: 12,
                            color: CustomColor.blue),
                      ),
                      Spacer(),
                      Text(
                        ': توضیحات محصول',
                        style: TextStyle(fontFamily: 'SM', color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(left: 44, right: 44, top: 10),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: CustomColor.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'مشاهده',
                        style: TextStyle(
                            fontFamily: 'SB',
                            fontSize: 12,
                            color: CustomColor.blue),
                      ),
                      Spacer(),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: Colors.green),
                          ),
                          Positioned(
                            right: 15,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  color: Colors.red),
                            ),
                          ),
                          Positioned(
                            right: 30,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  color: Colors.yellow),
                            ),
                          ),
                          Positioned(
                            right: 45,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  color: Colors.blue),
                            ),
                          ),
                          Positioned(
                            right: 60,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  '+10',
                                  style: TextStyle(
                                    fontFamily: 'SB',
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ': نظرات کاربران',
                        style: TextStyle(fontFamily: 'SM', color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 44, left: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PriceTagButton(),
                    AddToBasketButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: 140,
          height: 60,
          decoration: BoxDecoration(
            color: CustomColor.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 160,
                height: 53,
                child: Center(
                    child: Text(
                  'افزودن به سبد خرید',
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 14, color: Colors.white),
                )),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PriceTagButton extends StatelessWidget {
  const PriceTagButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: 140,
          height: 60,
          decoration: BoxDecoration(
            color: CustomColor.green,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 160,
                height: 53,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'تومان',
                        style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '۱۱٬۱۴۰٬۰۰۰',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.lineThrough,
                                fontFamily: 'SM',
                                fontSize: 12),
                          ),
                          Text(
                            '۱۱٬۱۴۰٬۰۰۰',
                            style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 6,
                          ),
                          child: Text(
                            '3%',
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
