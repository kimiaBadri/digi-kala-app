import 'package:digi_kala_project/constants/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backGroundScreen,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 44),
          height: 249,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('آیفون 13 پرومکس دوسیم کا...'),
                            Text('گارانتی 18 ماهه مدیا پردازش'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
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
                                Text('تومان'),
                                Text('۴۶٬۰۰۰٬۰۰۰'),
                              ],
                            ),
                            Wrap(
                              children: [
                                OptionCheap(),
                                OptionCheap(),
                                OptionCheap(),
                                OptionCheap(),
                                OptionCheap(),
                                OptionCheap(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset('assets/images/iphone.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DottedLine(
                  lineThickness: 3.0,
                  dashLength: 8.0,
                  dashColor: CustomColor.grey.withOpacity(0.5),
                  dashGapLength: 3.0,
                  dashGapColor: Colors.transparent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('تومان'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('50.000.000'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OptionCheap extends StatelessWidget {
  const OptionCheap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: CustomColor.grey.withOpacity(0.5), width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/icon_options.png'),
            SizedBox(
              width: 10,
            ),
            Text('kimiaBadri'),
          ],
        ),
      ),
    );
  }
}
