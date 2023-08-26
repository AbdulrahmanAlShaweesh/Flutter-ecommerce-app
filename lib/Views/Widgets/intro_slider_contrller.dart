import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/slider_explore_text.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/slider_next_text.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/slider_skip_text.dart';
import 'package:flutter_ecommerce_app/Views/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderControlWidget extends StatelessWidget {
  const SliderControlWidget({
    super.key,
    required PageController controller,
    required this.screens,
    required this.onLastPage,
  }) : _controller = controller;

  final PageController _controller;
  final List<Widget> screens;
  final bool onLastPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // skip
        GestureDetector(
          onTap: () {
            _controller.jumpToPage(screens.length - 1);
          },
          child: const SliderSkipText(),
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: screens.length,
        ),
        onLastPage
            ? GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
                child: const SliderExploreText(),
              )
            : GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeIn,
                  );
                },
                child: const SliderNextText(),
              ),
      ],
    );
  }
}
