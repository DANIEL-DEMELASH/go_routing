import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing/presentation/models/destination.dart';

class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        indicatorColor: Colors.green,
        destinations: destinations.map(
          (destination) => NavigationDestination(
            icon: Icon(destination.icon), 
            label: destination.label, 
            selectedIcon: Icon(destination.icon, color: Colors.red,),
            )
          ).toList()
      ),
    );
  }
}