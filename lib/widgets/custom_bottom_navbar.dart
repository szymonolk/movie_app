import 'package:flutter/material.dart';
import 'package:movie_app/utils/colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomBottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: unselectedItemColorNavBar,
      unselectedLabelStyle: TextStyle(),
      selectedItemColor: selectedItemColorNavBar,
      currentIndex: currentIndex,
      onTap: _itemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Discover"),
      ],
    );
  }

  void _itemTapped(int index) {
    setState(() {
      currentIndex = index;
      print(currentIndex);
    });
  }
}
