import 'package:flutter/material.dart';

class MyCustomTab extends StatelessWidget {
  MyCustomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.red, // Selected tab text color
      unselectedLabelColor: Colors.white, // Unselected tab text color
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      dividerColor: Colors.black,
      // Tabs to be displayed
      tabs: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Tab(
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Tab(
            child: Text(
              "Notice",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Gallery",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Our Member",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "About Us",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Contact Us",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
