import 'package:flutter/material.dart';
import 'package:parlor_app/theme/app_text_styles.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> title = <String>[
      "Men's Hair Cut",
      "Men's Shaving",
      "Womens Hair Cut",
      "Hair Color",
    ];
    List<String> companies = <String>[
      "45 Min",
      "20 Min",
      "60 Min",
      "90 Min",
    ];
    List<String> price = <String>[
      "45",
      "30",
      "60 ",
      "120",
    ];
    bool _isComplated = false;
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 460, 10, 0),
      itemCount: title.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white54,
          child: Container(
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.scale(
                    scale: 1.8,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      activeColor: const Color(0xFF453574),
                      tristate: true,
                      value: _isComplated,
                      onChanged: (v) {
                        setState(
                          () {
                            // _isComplated = v ?? false;
                            print(_isComplated = v ?? false);
                          },
                        );
                      },
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title[index], style: AppTextStyles.folderText),
                      Text(" ${companies[index]}",
                          style: AppTextStyles.foldertime),
                    ],
                  ),
                  Text(price[index], style: AppTextStyles.folderText),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
