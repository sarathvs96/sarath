import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                color: Colors.red,
          ),
          child: Center(
            child: Text("Page 1",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
        ),
      )
    );
  }
}
