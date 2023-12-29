import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/intro_controller.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/intro/IMAGE.png',
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 912,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0, -1.5),
                  end: Alignment(0, 0.5),
                  colors: [
                Color(0x3351B6DF),
                Color(0xFF4178D4),
              ],
                  stops: [
                0.20,
                1.0
              ])),
        ),
        SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/icon/Logowhite.png",
                width: 113,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 390.0,
            ),
            const Text(
              'Hello and\n Wellcome here!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              width: 311,
              height: 44,
              child: Opacity(
                opacity: 0.69,
                child: Text(
                  'Get an overview of how you are performing and motivate yourself to achieve even moew.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      letterSpacing: 0.20,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 49.0,
            ),
            SizedBox(
              width: 149,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff52B6DF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardingScreenView()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's Start :))",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ))
      ]),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
