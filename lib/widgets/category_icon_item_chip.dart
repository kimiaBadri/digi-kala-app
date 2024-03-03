import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CategoryIconItemChip extends StatelessWidget {
  const CategoryIconItemChip({
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
                shadows: [
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
