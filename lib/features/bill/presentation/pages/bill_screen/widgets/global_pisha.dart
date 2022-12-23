import 'package:flutter/material.dart';

class GlobalPisha extends StatelessWidget {
  const GlobalPisha({super.key, required this.onTap, required this.isActive});

  final Function() onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.grey[200] : Colors.blue,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        height: 31,
        width: 33,
      ),
    );
  }
}
