import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../view/onboarding_screen_view.dart';

class OnboardingScreenController extends State<OnboardingScreenView> {
  static late OnboardingScreenController instance;
  late OnboardingScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
