import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
              color: Colors.green,
            ),
            child: Center(
              child: Text("Page 2",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
          ),
        )
    );
  }
}
