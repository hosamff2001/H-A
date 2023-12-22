import 'package:ecommerce/features/Onborading/view/widgets/on_borading_appbar.dart';
import 'package:ecommerce/features/Onborading/view/widgets/on_borading_body.dart';
import 'package:ecommerce/features/Onborading/view/widgets/on_borading_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../data/onborading_model.dart';

class OnBordingScreen extends StatelessWidget {
  OnBordingScreen({super.key});

  final PageController bordingcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: onBradingModel.length,
          controller: bordingcontroller,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.5,
                image: AssetImage(onBradingModel[index].image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                OnBoradingAppBar(index: index),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Spacer(),
                Expanded(child: OnBradingBody(index: index)),
                Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: OnBoradingBottomBar(
                        bordingcontroller: bordingcontroller, index: index)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
