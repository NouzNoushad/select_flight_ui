import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_drawing/path_drawing.dart';

import 'flight_available.dart';

class SelectFlightHome extends StatefulWidget {
  const SelectFlightHome({super.key});

  @override
  State<SelectFlightHome> createState() => _SelectFlightHomeState();
}

class _SelectFlightHomeState extends State<SelectFlightHome> {
  String selectedValue = 'Quickest';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(children: [
          ClipPath(
            clipper: CustomClipperDesign(),
            child: Container(
              height: size.height * 0.42,
              color: Color.fromRGBO(23, 48, 86, 1),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/map_img.png',
                    height: size.height,
                    width: size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              'Select Flight',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            CustomPaint(
                              painter: CurvePainter(),
                              child: Container(
                                // color: Colors.white,
                                height: size.height * 0.10,
                                width: size.width * 0.6,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: size.width * 0.26,
                              child: const RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.flight,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white30,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white30,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    'CDG',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Paris',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'FLR',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Florence',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.32,
            child: Container(
              width: size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.25,
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                            right: Radius.circular(20),
                          )),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              'Filter',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.tune,
                              color: Colors.white,
                            )
                          ]),
                    ),
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.45,
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                            right: Radius.circular(20),
                          )),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Sort by:',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: size.width * 0.28,
                              height: size.height * 0.05,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: selectedValue,
                                  icon: const Icon(
                                    Icons.expand_more,
                                    color: Colors.white,
                                  ),
                                  dropdownColor: Colors.teal,
                                  items: ['Quickest', 'Nearest', 'Luxury']
                                      .map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ]),
            ),
          ),
          Positioned(
            top: size.height * 0.39,
            child: Column(children: [
              const Text(
                '3 Flights Available',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(23, 48, 86, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: size.height * 0.58,
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(
                    itemCount: 3,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: size.height * 0.28,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(195, 235, 240, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: const FlightAvailableCard(),
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    double h = size.height;
    double w = size.width;

    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;

    var startPoint = Offset(0, h);
    var controlPoint1 = Offset(w / 4, h / 4);
    var controlPoint2 = Offset(3 * w / 4, h / 4);
    var endPoint = Offset(w, h);

    var path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    canvas.drawPath(
        dashPath(path, dashArray: CircularIntervalList([15, 10.5])), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.lineTo(0, h / 1.2 - 50);
    path.quadraticBezierTo(20, h / 1.2, 80, h / 1.2);
    path.lineTo(w, h / 1.2);
    path.lineTo(w - 80, h / 1.2);
    path.quadraticBezierTo(w - 20, h - 50, w, h);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
