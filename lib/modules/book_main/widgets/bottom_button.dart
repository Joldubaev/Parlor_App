import 'package:flutter/material.dart';
import 'package:parlor_app/theme/app_color/them.dart';
import 'package:parlor_app/theme/app_text_style/text_style.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
      child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 73,
          decoration: BoxDecoration(
              color: BookPageColor.BgColor,
              borderRadius: BorderRadius.circular(14)),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Proceed Payment',
              style: BookPageTextStyle.customStyle,
            ),
          )),
    );
  }
}
