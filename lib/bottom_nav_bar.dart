import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavBar({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assests/connect.svg'),
          label: 'Connect',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assests/contribute.svg'),
          label: 'Contribute',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assests/events.svg'),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assests/profile.svg'),
          label: 'Profile',
        ),
      ],
    );
  }
}
