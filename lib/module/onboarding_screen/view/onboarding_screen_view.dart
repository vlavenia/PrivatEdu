import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/onboarding_screen_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({Key? key}) : super(key: key);

  Widget build(context, OnboardingScreenController controller) {
    controller.view = this;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Builder(builder: (context) {
                    List images = [
                      {
                        'image': 'assets/onboarding/onboarding1.png',
                        'title': 'Find your favorite class',
                        'description':
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.'
                      },
                      {
                        'image': 'assets/onboarding/onboarding3.png',
                        'title': 'Explore More Skills',
                        'description':
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.'
                      },
                      {
                        'image': 'assets/onboarding/onboarding2.png',
                        'title': 'Get the best Teacher',
                        'description':
                            'Lorem ipsum dolor sit amet, , consectetur adipiscing elit. Sit enim, ac amet ultrices.'
                      },
                    ];

                    return Container(
                      child: Column(
                        children: [
                          CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              viewportFraction: 1,
                              height: MediaQuery.of(context).size.height * 0.8,
                              onPageChanged: (index, reason) {
                                controller.currentIndex = index;
                                // ignore: invalid_use_of_protected_member
                                controller.setState(() {});
                              },
                            ),
                            items: images.map((imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        imageUrl['image']))),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: FractionalOffset
                                                        .bottomCenter,
                                                    end: FractionalOffset
                                                        .topCenter,
                                                    colors: [
                                                  const Color(0xff4178D4),
                                                  const Color(0xff52B6DF)
                                                      .withOpacity(0.1),
                                                ],
                                                    stops: const [
                                                  0.001,
                                                  1.0
                                                ])),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 364),
                                            child: Center(
                                              child: Image.asset(
                                                'assets/icon/Logowhite.png',
                                                width: 113,
                                                height: 25,
                                              ),
                                            ),
                                          ),
                                          // Column(
                                          //   crossAxisAlignment: CrossAxisAlignment.center,
                                          //   children: [
                                          //     const SizedBox(
                                          //       height: 20.0,
                                          //     ),
                                          //     Center(
                                          //         child: Image.asset(
                                          //             'assets/icon/Logowhite.png'))
                                          //   ],
                                          // )
                                        ],
                                      ),
                                      Container(
                                        child: const SizedBox(
                                          height: 25.0,
                                        ),
                                      ),
                                      Text(imageUrl['title'],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24)),
                                      SizedBox(
                                        width: 311,
                                        height: 39,
                                        child: Text(
                                          imageUrl['description'],
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ));
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: images.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => controller.carouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.black)
                                          .withOpacity(
                                              controller.currentIndex ==
                                                      entry.key
                                                  ? 0.9
                                                  : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginView()),
                          );
                        },
                        child: const Text(
                          "Skip",
                          style:
                              TextStyle(color: Color(0xff52B6DF), fontSize: 19),
                        )),
                    IconButton(
                      onPressed: () {
                        controller.carouselController.nextPage();
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OnboardingScreenView> createState() => OnboardingScreenController();
}
