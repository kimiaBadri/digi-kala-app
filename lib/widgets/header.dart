import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Header extends StatelessWidget {
  final String? text;
  Header({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 44, right: 44, bottom: 32, top: 20),
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
                  text.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 16, color: CustomColor.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
