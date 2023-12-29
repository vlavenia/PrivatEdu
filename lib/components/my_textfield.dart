import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Email"),
          const SizedBox(
            height: 12.0,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.grey),
            initialValue: 'study@email.com',
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.black, fontSize: 25),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Password"),
          const SizedBox(
            height: 13.0,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.grey),
            initialValue: '123456',
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.black, fontSize: 25),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
