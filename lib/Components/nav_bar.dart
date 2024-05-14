import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      items: [
        BottomNavigationBarItem(
          label: 'Search Menu',
          icon: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset(
              'assets/icons/search-menu.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Favourite',
          icon: Image.asset(
            'assets/icons/normal.png',
            height: 40,
            width: 40,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Image.asset(
            'assets/icons/home.png',
            height: 40,
            width: 40,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Cart',
          icon: Image.asset(
            'assets/icons/cart.png',
            height: 40,
            width: 40,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person_2_outlined,
              size: 30, color: Color(0xFF505050).withOpacity(.8)),
        ),
      ],
    );
  }
}
