import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorTest extends StatefulWidget {
  const SmoothPageIndicatorTest({super.key});

  @override
  State<SmoothPageIndicatorTest> createState() => _SmoothPageIndicatorTestState();
}

class _SmoothPageIndicatorTestState extends State<SmoothPageIndicatorTest> {
  @override
  final controller = PageController(viewportFraction: 0.5, keepPage: true,initialPage: 1);
  Widget build(BuildContext context) {

    final pages = List.generate(
        6,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 280,
            child: Center(
                child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
          ),
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Smooth Page Indicator",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),



              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
                axisDirection: Axis.horizontal,

              ),
            ],
          ),
        ),
      )
    );
  }
}
