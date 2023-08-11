
import 'package:flutter/material.dart';
import 'package:sarath/gmail_homepage.dart';
import 'package:sarath/page1.dart';
import 'package:sarath/page2.dart';
import 'package:sarath/page3.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:sarath/progress_dialog_test.dart';
import 'package:sarath/zoom_drawer_test.dart';

import 'auto_size_text_test.dart';
import 'otp_textfield_example.dart';

void main() => runApp(MaterialApp(home: OtpTextFieldExample()));


class HelloConvexAppBar extends StatefulWidget {

  @override
  State<HelloConvexAppBar> createState() => _HelloConvexAppBarState();
}

class _HelloConvexAppBarState extends State<HelloConvexAppBar> {
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = [
    Page1(),
    Page2(),
    Page3()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello ConvexAppBar')),
      body: Center(
          child:_widgetOptions[_selectedIndex]),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: 1,
        onTap: _onItemTapped
      ),
    );
  }
}