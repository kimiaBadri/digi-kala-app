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
          ],
        ),
      ),
    ));
  }
}
