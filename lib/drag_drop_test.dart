import 'package:flutter/material.dart';

class ExampleDragAndDrop extends StatefulWidget {
  const ExampleDragAndDrop({super.key});

  @override
  State<ExampleDragAndDrop> createState() => _ExampleDragAndDropState();
}

class _ExampleDragAndDropState extends State<ExampleDragAndDrop> {
  bool _isDropped=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Draggable<String>(
                  // Data is the value this Draggable stores.
                  data: 'red',
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    child: Center(
                      child:_isDropped?Container(color: Colors.transparent,): Image.asset('assets/images/image1.png'),
                    ),
                  ),
                  feedback: Container(
                    height: 120.0,
                    width: 120.0,
                    child: Center(
                      child: Image.asset('assets/images/image1.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                DragTarget<String>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {

                    return _isDropped?Container(
                      height: 120,
                      width: 120,
                      child: Center(
                        child: Image.asset('assets/images/image1.png'
                            ),
                      ),
                    ): Container(
                        width: 120,
                        height: 120,
                        color: Colors.red,
                      );

                  },
                  onWillAccept: (data) {
                    return data == 'red';
                  },
                  onAccept: (data) {
                    setState(() {
                      _isDropped = true;
                    });
                  },
                  onLeave: (data) {
                    print("Missed");
                  },

                ),
              ],
            ),
          ),
        ));
  }
}
