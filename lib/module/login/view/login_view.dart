import 'package:flutter/material.dart';
import 'package:privatedu/components/my_textfield.dart';
import 'package:privatedu/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const MyTextField(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordView()),
                            );
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: 385,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomepageOneContainerScreen()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(18),
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp1Screen()),
                        );
                      },
                      child: const Text("Sign Up"))
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 50, right: 20),
                          child: const Divider())),
                  const Text("OR"),
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(left: 20, right: 50),
                          child: const Divider())),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icon/google.png',
                      width: 36,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icon/facebook.png',
                      width: 36,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icon/apple.png',
                      width: 36,
                    ))
              ]),
            ],
          ),
        )),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
