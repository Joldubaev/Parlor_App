import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:parlor_app/modules/book_main/widgets/date_widget.dart';
import 'package:parlor_app/theme/app_color/them.dart';
import 'widgets/bottom_button.dart';

class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  _BookNowState createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  DateTime? _selectedDate;
  String? _selectedTimeSlot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color(0xff453574),
        title: const Text(
          "Book Now",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(color: Color(0xff453574)),
          child: Stack(children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DateWidget(),
                  const SizedBox(height: 10),
                  DatePicker(
                    DateTime.now(),
                    height: 100,
                    width: 80,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: BookPageColor.BgColor,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      setState(() {
                        _selectedDate = date;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  if (_selectedDate != null) ...[
                    const Text(
                      "Choose Time Slot:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                  const SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Morning",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              _buildTimeSlot("9:00 AM"),
                              _buildTimeSlot("10:00 AM"),
                              _buildTimeSlot("11:00 AM"),
                              _buildTimeSlot("12:00 AM"),
                              _buildTimeSlot("13:00 AM"),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Afternoon",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              _buildTimeSlot("12:00 PM"),
                              _buildTimeSlot("1:00 PM"),
                              _buildTimeSlot("2:00 PM"),
                              _buildTimeSlot("3:00 PM"),
                              _buildTimeSlot("4:00 PM"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: double.infinity,
                    height: 73,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              color: BookPageColor.greyCrl,
                              spreadRadius: 4,
                              blurRadius: 10)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Men’s Hair Cut",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: BookPageColor.priceColor,
                                borderRadius: BorderRadius.circular(14)),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                '45',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ])),
      bottomNavigationBar: const BottomButton(),
    );
  }

  Widget _buildTimeSlot(String timeSlot) {
    final isSelected = _selectedTimeSlot == timeSlot;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTimeSlot = isSelected ? null : timeSlot;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? BookPageColor.BgColor : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          timeSlot,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
