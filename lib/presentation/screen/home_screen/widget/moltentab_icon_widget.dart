import 'package:flutter/material.dart';

class MoltenTabIcon extends StatelessWidget {
  final IconData icon;
  const MoltenTabIcon({
    required this .icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Icon(icon, size: 30,);
  }
}