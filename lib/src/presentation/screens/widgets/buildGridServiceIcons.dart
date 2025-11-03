import 'package:flutter/material.dart';

/// A reusable widget for grid service icons with perfectly fitted circular images.
Widget buildGridServiceIcon({
  required String imagePath, // path to your image asset
  required String label, // text below the avatar
  double radius = 28, // avatar radius
  Color borderColor = const Color(0xFF1565C0), // border color
}) {
  final double diameter = radius * 2;

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor.withOpacity(0.3), width: 1.2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover, // ensures full coverage (no white spaces)
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
