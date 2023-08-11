import 'package:flutter/material.dart';
import 'package:sarath/page1.dart';
import 'package:sarath/page2.dart';
import 'package:sarath/page3.dart';

class BottamNaviTest extends StatefulWidget {
  const BottamNaviTest({super.key});

  @override
  State<BottamNaviTest> createState() => _BottamNaviTestState();
}

class _BottamNaviTestState extends State<BottamNaviTest> {
  @override
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Page2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Page3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
