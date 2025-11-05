import 'package:flutter/material.dart';

/// A reusable helper widget that displays
/// a circular image and a text label below it.
/// The image fits nicely in the circle (no cropping or empty edges).
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
          child: Padding(
            padding: const EdgeInsets.all(6.0), // add a little breathing space
            child: Image.asset(
              assetPath,
              fit: BoxFit.contain, // ensures the full image is visible
            ),
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
