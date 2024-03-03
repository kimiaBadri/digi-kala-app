import 'package:digi_kala_project/widgets/category_icon_item_chip.dart';
import 'package:digi_kala_project/widgets/header.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backGroundScreen,
      body: SafeArea(
        child: Column(
          children: [
            Header(
              text: 'حساب کاربری',
            ),
            Text(
              'کیمیا بدری',
              style: TextStyle(fontFamily: 'SB', fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '096582345',
              style: TextStyle(
                  fontFamily: 'SM', fontSize: 10, color: CustomColor.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                  CategoryIconItemChip(),
                ],
              ),
            ),
            Spacer(),
            Text(
              'اپل شاپ',
              style: TextStyle(
                  fontFamily: 'SM', fontSize: 10, color: CustomColor.grey),
            ),
            Text(
              'v-1.0.00',
              style: TextStyle(
                  fontFamily: 'SM', fontSize: 10, color: CustomColor.grey),
            ),
            Text(
              'instagram.com/Mojava-dev',
              style: TextStyle(
                  fontFamily: 'SM', fontSize: 10, color: CustomColor.grey),
            ),
          ],
        ),
      ),
    );
  }
}
