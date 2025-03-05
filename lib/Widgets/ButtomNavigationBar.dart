import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qibla_app/Controllers/HomeController.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context);

    return BottomNavigationBar(
      currentIndex: homeController.index, 
      onTap: (newIndex) {
        homeController.setindex = newIndex; 
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Explore",
        ),
      ],
    );
  }
}
