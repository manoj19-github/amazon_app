import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 10,
            top: 15,
          ),
          child: const Text(
            "Deal of the day",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Image.network(
              'https://media.istockphoto.com/id/1497209456/photo/real-estate-agent-meeting-a-couple-for-a-house-showing.webp?b=1&s=170667a&w=0&k=20&c=M42TtW0jbFgAcWssby-qAOC9zQkrz4H7pai4WcJUBRM=',
              height: 235,
              fit: BoxFit.fitHeight),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 14, top: 5, right: 20),
          child: Text("Manoj Santra's Product ",
              maxLines: 2, overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
