import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class ExpandedPageViewTest extends StatefulWidget {
  const ExpandedPageViewTest({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ExpandedPageViewTest> createState() => _ExpandedPageViewTestState();
}

class _ExpandedPageViewTestState extends State<ExpandedPageViewTest> {
  @override
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpandablePageView(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      )

    );
  }
}
