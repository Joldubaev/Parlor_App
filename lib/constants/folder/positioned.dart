import 'package:flutter/material.dart';
import 'package:parlor_app/theme/app_text_styles.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 320,
      left: 0,
      right: 0,
      child: Container(
        height: 470,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(right: 200, top: 19),
          child: Column(
            children: [
              Text(
                'Diana Mcminn',
                style: AppTextStyles.folderText,
              ),
              Text('Hair Catle'),
              Row(
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  Text('4.7'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.grade,
                    color: Colors.yellow,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Service List',
                style: AppTextStyles.serviceList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
