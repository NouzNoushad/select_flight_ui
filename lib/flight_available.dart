import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlightAvailableCard extends StatelessWidget {
  const FlightAvailableCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'CDG',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(23, 48, 86, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Paris Charles',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(23, 48, 86, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'de Gaulite Airport',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(23, 48, 86, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'FLR',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(23, 48, 86, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Florence',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(23, 48, 86, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Peretola Airport',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(23, 48, 86, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: size.height * 0.04,
          // color: Colors.yellow,
          child: Stack(
            children: [
              Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.teal.shade300,
                      child: const CircleAvatar(
                        radius: 5,
                        backgroundColor: Color.fromRGBO(23, 48, 86, 1),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: customDottedLine(),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.teal.shade300,
                      child: const CircleAvatar(
                        radius: 5,
                        backgroundColor: Color.fromRGBO(23, 48, 86, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.flight,
                    size: 35,
                    color: Color.fromRGBO(23, 48, 86, 1),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Depart',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.teal),
                ),
                Text(
                  'Sun 24 June',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(23, 48, 86, 1)),
                ),
                Text(
                  '09:30 AM',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(23, 48, 86, 1)),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  '1h 45m',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.teal),
                ),
                Text(
                  'Non-stop',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Arrive',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.teal),
                ),
                Text(
                  'Sun 24 June',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(23, 48, 86, 1)),
                ),
                Text(
                  '11:45 AM',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(23, 48, 86, 1)),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Emirates'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(23, 48, 86, 1)),
            ),
            const Text(
              '\$1,181',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(23, 48, 86, 1)),
            ),
          ],
        ),
      ],
    );
  }

  Widget customDottedLine() => Row(
        children: List.generate(
            400 ~/ 10,
            (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0
                        ? Colors.transparent
                        : const Color.fromRGBO(23, 48, 86, 1),
                    height: 1.2,
                  ),
                )),
      );
}
