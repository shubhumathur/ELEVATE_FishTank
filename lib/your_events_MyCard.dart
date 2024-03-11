


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard2 extends StatelessWidget {
  final String title;
  final String description;

  MyCard2({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 300.0,
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: SvgPicture.asset(
                  'assests/completed_you_event.svg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}
