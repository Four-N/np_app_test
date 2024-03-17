import 'package:flutter/material.dart';

//0xFFFCF4E4 //0xFF756d54
class IconsButton extends StatelessWidget {
  final IconData icon;
  const IconsButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xFFFCF4E4),
      ),
      child: Icon(
        icon,
        color: const Color(0xFF756d54),
        size: 14,
      ),
    );
  }
}
