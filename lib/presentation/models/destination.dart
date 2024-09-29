import 'package:flutter/material.dart';

class Destination {
  final String label;
  final IconData icon;

  const Destination({required this.label, required this.icon});
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home_outlined),
  Destination(label: 'Explore', icon: Icons.search),
  Destination(label: 'Settings', icon: Icons.settings),
];