
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBordingScreen extends StatelessWidget {
  OnBordingScreen({super.key});

  final PageController bordingcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
           
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: bordingcontroller,
                    effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        activeDotColor: Colors.pinkAccent,
                        dotWidth: 10,
                        spacing: 5),
                    count: 3),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    
                  },
                  child: const Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
