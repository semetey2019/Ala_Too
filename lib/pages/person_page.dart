import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Бронирование",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: 150,
            height: 30,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 199, 0, 0.20),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffffa800),
                    ),
                    Text(
                      "5 Превосходно",
                      style: TextStyle(color: Color(0xffffa800)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Text(
          //   "Steigenberger Makadi",
          //   style: TextStyle(
          //       fontSize: 22,
          //       fontWeight: FontWeight.w500,
          //       color: Colors.black),
          // ),
          // const Text(
          //   "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
          //   style: TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.w500,
          //       color: Colors.blue),
          // ),
        ),
      ),
    );
  }
}
