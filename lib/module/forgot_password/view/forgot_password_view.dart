import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginView()),
                        );
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
                      color: Color.fromARGB(215, 158, 158, 158), fontSize: 17),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                      color: Color.fromARGB(255, 78, 77, 77), fontSize: 19),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                TextFormField(
                    style: const TextStyle(
                        color: Color.fromARGB(255, 98, 97, 97),
                        fontWeight: FontWeight.w700),
                    initialValue: 'landlordjones@email.com',
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(175, 158, 158, 158),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightBlue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.lightBlue)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPaswordAuthView()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const Center(
                          child: Text(
                            "Reset Password",
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
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
