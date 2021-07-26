import 'dart:math';
import 'package:flutter/material.dart';

class PieChart extends CustomPainter {
  PieChart({required this.categories, required this.width});

  final List<Category> categories;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    double total = 0;
    categories.forEach((expense) => total += expense.amount);

    double startRadian = -pi / 2;

    for (var index = 0; index < categories.length; index++) {
      final currentCategory = categories.elementAt(index);
      final sweepRadian = currentCategory.amount / total * 2 * pi;
      paint.color = kNeumorphicColors.elementAt(index % categories.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class Category {
  Category(this.name, {required this.amount});

  final String name;
  final double amount;
}

final kCategories = [
  Category('Makanan', amount: 500.00),
  Category('Minuman', amount: 150.00),
  Category('Peralatan Mandi', amount: 90.00),
  Category('Bumbu Dapur', amount: 90.00),
  Category('Listrik', amount: 40.00),
  Category('Pajak', amount: 20.00),
];

final kNeumorphicColors = [
  Color.fromRGBO(82, 98, 255, 1), //  rgb(82, 98, 255)
  Color.fromRGBO(46, 198, 255, 1), // rgb(46, 198, 255)
  Color.fromRGBO(123, 201, 82, 1), // rgb(123, 201, 82)
  Color.fromRGBO(255, 171, 67, 1), // rgb(255, 171, 67)
  Color.fromRGBO(252, 91, 57, 1), //  rgb(252, 91, 57)
  Color.fromRGBO(139, 135, 130, 1), //rgb(139, 135, 130)
];
