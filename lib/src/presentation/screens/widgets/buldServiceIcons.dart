import 'package:flutter/material.dart';

/// A reusable helper widget that displays
/// a circular image and a text label below it.
/// The image fills the circle perfectly (no white spaces).
Widget buildServiceIcon({
  required String assetPath, // path to image asset
  required String label, // text below the image
  double size = 60, // circle size
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white, // background behind the image
        ),
        child: ClipOval(
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover, // fills the entire circle
          ),
        ),
      ),
      const SizedBox(height: 6),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
