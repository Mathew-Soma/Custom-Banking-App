import 'package:flutter/material.dart';

/// A reusable widget for grid service icons without any circular border.
Widget buildGridServiceIcon({
  required String imagePath, // path to your image asset
  required String label, // text below the icon
  double size = 40, // image size
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        width: size,
        height: size,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain, // makes sure the full image fits well
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
