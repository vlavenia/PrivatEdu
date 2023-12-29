import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/forgot_pasword_auth_controller.dart';

class ForgotPaswordAuthView extends StatefulWidget {
  const ForgotPaswordAuthView({Key? key}) : super(key: key);

  Widget build(context, ForgotPaswordAuthController controller) {
    controller.view = this;
    return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 24.0,
                          )),
                    ),
                    const SizedBox(
                      height: 35.0,
                    ),
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(
                      height: 17.0,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
                      style: TextStyle(
                          color: Color.fromARGB(215, 158, 158, 158),
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    const Text(
                      "New Password",
                      style: TextStyle(
                          color: Color.fromARGB(255, 78, 77, 77), fontSize: 19),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    TextFormField(
                      initialValue: '123456',
                      obscureText: true,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      initialValue: '123456',
                      obscureText: true,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightBlue),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Colors.lightBlue)))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "Create Password",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        );
  }

  @override
  State<ForgotPaswordAuthView> createState() => ForgotPaswordAuthController();
}
