import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Exzemple extends StatefulWidget {
  const Exzemple({super.key});

  @override
  State<Exzemple> createState() => _ExzempleState();
}

class _ExzempleState extends State<Exzemple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Container(
          width: 343,
          height: 183,
          color: Colors.blue,
          child: Row(
            children: [
              SvgPicture.asset('assets/close.svg'),
              Text("dfgdg"),
              Text("dfgdg"),
              Divider(
                color: Colors.red,
              ),
              Icon(Icons.add_comment),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/close.svg'),
                      Text("dfgdg"),
                      Text("dfgdg"),
                      Divider(
                        color: Colors.red,
                      ),
                      Icon(Icons.add_comment),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
