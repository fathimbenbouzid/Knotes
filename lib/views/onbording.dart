import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widgets/buttons/custom_btn.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});
  static PageController controller = OnBordingWidget.controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            const SizedBox(
              height: 128,
            ),
            const OnBordingWidget(),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Jot Down anything you want to achieve, today or in the future",
              style: TextStyle(
                fontFamily: "Inter",
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OnBordingIndicator(
              controller: controller,
            ),
            const SizedBox(
              height: 102,
            ),
            const CustomBtn(),
          ]),
        ),
      ),
    );
  }
}

class OnBordingWidget extends StatelessWidget {
  const OnBordingWidget({super.key});
  static PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Column(
                children: [
                  Image.asset(
                    'assets/images/onBording1.png',
                    height: 280,
                    width: 280,
                  ),
                ],
              );
            case 1:
              return Column(
                children: [
                  Image.asset(
                    'assets/images/onBording2.png',
                    height: 280,
                    width: 280,
                  ),
                ],
              );
            case 2:
              return Column(
                children: [
                  Image.asset(
                    'assets/images/onBording3.png',
                    height: 280,
                    width: 280,
                  ),
                ],
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class OnBordingIndicator extends StatelessWidget {
  const OnBordingIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: const ScrollingDotsEffect(
          dotHeight: 10, dotWidth: 10, activeDotColor: Color(0xffDEDC52)),
    );
  }
}
