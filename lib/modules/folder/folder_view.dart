import 'package:flutter/material.dart';
import 'package:parlor_app/constants/folder/folder_image.dart';
import 'package:parlor_app/theme/app_text_styles.dart';
import '../../constants/folder/list_view.dart';
import '../../constants/folder/positioned.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/images/folder_image.png'),
            ],
          ),
          const PositionedWidget(),
          const FolderImage(),
          const ListViewWidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 730, 0, 0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color(0xFF453574),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Book Now',
                    style: AppTextStyles.serviceList,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
