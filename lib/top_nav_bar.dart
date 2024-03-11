import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                   child: SvgPicture.asset("assests/menu.svg", width: 20, height: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assests/search.svg", width: 20, height: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assests/notification.svg", width: 20, height: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assests/messaging.svg", width: 20, height: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  //Navigator.pushNamed(context, '/fourth');
                },
                child: SvgPicture.asset("assests/upcoming.svg", width: 30, height: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/fourth');
                  // Handle navigation to the 'Your Events' screen
                },
                child: SvgPicture.asset("assests/your_events.svg", width: 30, height: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/fifth');
                  // Handle navigation to the 'Past Events' screen
                },
                child: SvgPicture.asset("assests/past_events.svg", width: 30, height: 20),
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
