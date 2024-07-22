import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: const Color(0xFF212325), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8,
        )
      ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Icon(
              Icons.home,
              color: Color(0xFFE57734),
              size: 35,
            ),
          ),
          Icon(
            Icons.favorite_outlined,
            color: Color.fromARGB(255, 252, 250, 249),
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Color.fromARGB(255, 245, 243, 242),
            size: 35,
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.person,
              color: Color.fromARGB(255, 246, 245, 244),
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
