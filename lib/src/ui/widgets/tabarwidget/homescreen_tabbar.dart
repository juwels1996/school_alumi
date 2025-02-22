import 'package:flutter/material.dart';

class MyCustomTab extends StatelessWidget {
  MyCustomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true, // Allow tabs to take only the required space
      labelColor: Colors.red,
      unselectedLabelColor: Colors.white,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      dividerColor: Colors.black,
      tabs: const [
        Tab(text: "Home"),
        Tab(text: "Notice"),
        Tab(text: "Gallery"),
        Tab(text: "Our Member"),
        Tab(text: "About Us"),
        Tab(text: "Contact Us"),
      ],
    );
  }
}
