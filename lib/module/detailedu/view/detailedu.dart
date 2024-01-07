// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:privatedu/module/detailedu/widget/carditem.dart';

class detaileducation extends StatefulWidget {
  const detaileducation({Key? key}) : super(key: key);

  @override
  State<detaileducation> createState() => _detaileducationState();
}

class _detaileducationState extends State<detaileducation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 34.0,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 106),
                      child: Text(
                        "SMP",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    )
                  ],
                ),
                cardlist()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class cardlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List item = [
      {
        'image': 'assets/icon/education/tk.png',
        'name': 'TK',
        'desc': 'lorem ipsum'
      },
    ];
    return SizedBox(
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16);
            },
            itemCount: item.length,
            itemBuilder: (BuildContext context, int index) {
              return carditem(item[index]['image'], item[index]['name'],
                  item[index]['desc']);
            }));
  }
}
