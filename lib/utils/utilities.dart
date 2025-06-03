import 'package:flutter/material.dart';

/// A custom painter that draws a dashed (broken) line, either vertically or horizontally.
///
/// Useful for UI elements like timelines, dividers, or decorators.
///
/// Example usage:
/// ```dart
/// CustomPaint(
///   size: Size(1, 100), // Vertical dashed line
///   painter: DashedLinePainter(color: Colors.grey, isVertical: true),
/// )
/// ```
///
/// ```dart
/// CustomPaint(
///   size: Size(100, 1), // Horizontal dashed line
///   painter: DashedLinePainter(color: Colors.grey, isVertical: false),
/// )
/// ```

class DashedLinePainter extends CustomPainter {
  /// The color of the dashed line.
  final Color color;

  /// Whether the dashed line is vertical.
  ///
  /// If false, the line will be drawn horizontally.
  final bool isVertical;

  /// Creates a [DashedLinePainter] with optional [color] and [isVertical] direction.
  DashedLinePainter({
    this.color = Colors.blueGrey,
    this.isVertical = true,
  });
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 9; // Length of each dash segment
    double dashSpace = 5; // Space between dash segments
    double currentPos = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;

    if (isVertical) {
      while (currentPos < size.height) {
        canvas.drawLine(
            Offset(0, currentPos), Offset(0, currentPos + dashWidth), paint);
        currentPos += dashWidth + dashSpace;
      }
    } else {
      while (currentPos < size.width) {
        canvas.drawLine(
            Offset(currentPos, 0), Offset(currentPos + dashWidth, 0), paint);
        currentPos += dashWidth + dashSpace;
      }
    }
  }

  /// Determines whether the painter should repaint when the properties change.
  @override
  bool shouldRepaint(covariant DashedLinePainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.isVertical != isVertical;
  }
}
