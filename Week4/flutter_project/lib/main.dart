import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(180, 0, 0, 0)),
          CustomPaint(
            painter: First(),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0 , 200)),
          CustomPaint(
            painter: Second(),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 200)),
          CustomPaint(
            painter: Third(),
          )
        ],
      )
      );
  }
}

class First extends CustomPainter {
 @override
void paint(Canvas canvas, Size size) {

  Paint paintCircleWhite = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;

  Paint paintCircleBlack = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;

  Paint paintRectBlack = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
  
  Path path2 = Path()
    ..moveTo(0, 0)
    ..lineTo(214, 0)
    ..lineTo(214, 100)
    ..lineTo(0, 100)
    ..lineTo(0, 0);
  canvas.drawPath(path2, paintRectBlack);

  Path path = Path()
    ..moveTo(0, 100)
    ..arcToPoint(
      const Offset(0, 0),
      radius: const Radius.circular(50),
      clockwise: false,
    );
  canvas.drawPath(path, paintCircleWhite);
  
  Path path1 = Path()
    ..moveTo(214, 0)
    ..arcToPoint(
      const Offset(214, 100),
      radius: const Radius.circular(50),
      clockwise: true,
    );
  canvas.drawPath(path1, paintCircleBlack);
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Second extends CustomPainter {
 @override
void paint(Canvas canvas, Size size) {

  Paint paintCircleWhite = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
  
  Paint paintCircleBlack = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;

  Paint paintRectBlack = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
  
  Path path2 = Path()
    ..moveTo(0, 0)
    ..lineTo(0, 100)
    ..lineTo(214, 100)
    ..lineTo(214, 0)
    ..lineTo(0, 0);
  canvas.drawPath(path2, paintRectBlack);

  Path path = Path()
    ..moveTo(0, 100)
    ..arcToPoint(
      const Offset(0, 0),
      radius: const Radius.circular(50),
      clockwise: false,
    );
  canvas.drawPath(path, paintCircleWhite);
  
  Path path1 = Path()
    ..moveTo(214, 0)
    ..arcToPoint(
      const Offset(214, 100),
      radius: const Radius.circular(50),
      clockwise: false,
    );
  canvas.drawPath(path1, paintCircleBlack);
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class Third extends CustomPainter {
 @override
void paint(Canvas canvas, Size size) {

  Paint paintCircleWhite = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
  
  Paint paintCircleBlack = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;

  Paint paintRectBlack = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill
    ..strokeWidth = 1;
  
  Path path2 = Path()
    ..moveTo(0, 0)
    ..lineTo(0, 100)
    ..lineTo(214, 100)
    ..lineTo(214, 0)
    ..lineTo(0, 0);
  canvas.drawPath(path2, paintRectBlack);

  Path path = Path()
    ..moveTo(0, 100)
    ..arcToPoint(
      const Offset(0, 0),
      radius: const Radius.circular(50),
      clockwise: true,
    );
  canvas.drawPath(path, paintCircleWhite);
  
  Path path1 = Path()
    ..moveTo(214, 0)
    ..arcToPoint(
      const Offset(214, 100),
      radius: const Radius.circular(50),
      clockwise: true,
    );
  canvas.drawPath(path1, paintCircleBlack);
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}