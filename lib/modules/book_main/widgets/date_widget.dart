import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parlor_app/theme/app_text_style/text_style.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            DateFormat.yMMMMd().format(DateTime.now()),
            style: BookPageTextStyle.subHeadingStyle,
          ),
          const Text(
            "Today",
            style: BookPageTextStyle.headingStyle,
          )
        ]),
      )
    ]);
  }
}
