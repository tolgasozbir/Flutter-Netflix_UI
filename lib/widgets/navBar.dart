import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index)=>setState(() {  _currentIndex=index;  }),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.queue_play_next),
          label: "Coming Soon",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_circle_down_outlined),
          label: "Downloads",
        ),
      ],
      backgroundColor: Color(0xFF191919),
      selectedItemColor: Colors.white,
      selectedFontSize: 11.0,
      unselectedItemColor: Colors.grey.shade600,
      unselectedFontSize: 11.0,
      iconSize: 30,
    );
  }
}