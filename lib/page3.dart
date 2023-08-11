import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
              color: Colors.blue,
            ),
            child: Center(
              child: Text("Page 3",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            ),
          ),
        )
    );
  }
}
