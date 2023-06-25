import 'package:flutter/material.dart';
import 'package:parlor_app/modules/book_main/book.dart';

class ParlorVew extends StatelessWidget {
  const ParlorVew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TITLE"),
      ),
      body: Container(
        child: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BookNow()));
            },
            icon: const Icon(Icons.line_axis_outlined)),
      ),
    );
  }
}
