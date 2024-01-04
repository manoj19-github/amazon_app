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
          padding: const EdgeInsets.only(left: 14, top: 10),
          child: Text("\$100 ", maxLines: 2, overflow: TextOverflow.ellipsis),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 14, top: 3, right: 20),
          child: Text("Manoj Santra's Product ",
              maxLines: 2, overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network(
                  "https://img.freepik.com/free-photo/basic-green-shirt-men-rsquo-s-fashion-apparel-studio-shoot_53876-101197.jpg?w=360&t=st=1704336121~exp=1704336721~hmac=c590bf84577179f18cc4f50c92b60774544aa76321192a021b5fc963c0268b88",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              const SizedBox(width: 10),
              Image.network(
                  "https://img.freepik.com/free-photo/basic-green-shirt-men-rsquo-s-fashion-apparel-studio-shoot_53876-101197.jpg?w=360&t=st=1704336121~exp=1704336721~hmac=c590bf84577179f18cc4f50c92b60774544aa76321192a021b5fc963c0268b88",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              const SizedBox(width: 10),
              Image.network(
                  "https://img.freepik.com/free-photo/basic-green-shirt-men-rsquo-s-fashion-apparel-studio-shoot_53876-101197.jpg?w=360&t=st=1704336121~exp=1704336721~hmac=c590bf84577179f18cc4f50c92b60774544aa76321192a021b5fc963c0268b88",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              const SizedBox(width: 10),
              Image.network(
                  "https://img.freepik.com/free-photo/basic-green-shirt-men-rsquo-s-fashion-apparel-studio-shoot_53876-101197.jpg?w=360&t=st=1704336121~exp=1704336721~hmac=c590bf84577179f18cc4f50c92b60774544aa76321192a021b5fc963c0268b88",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              const SizedBox(width: 10),
              Image.network(
                  "https://img.freepik.com/free-photo/basic-green-shirt-men-rsquo-s-fashion-apparel-studio-shoot_53876-101197.jpg?w=360&t=st=1704336121~exp=1704336721~hmac=c590bf84577179f18cc4f50c92b60774544aa76321192a021b5fc963c0268b88",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
              const SizedBox(width: 10),
              Image.network(
                  "https://img.freepik.com/free-photo/basic-green-shirt-men-rsquo-s-fashion-apparel-studio-shoot_53876-101197.jpg?w=360&t=st=1704336121~exp=1704336721~hmac=c590bf84577179f18cc4f50c92b60774544aa76321192a021b5fc963c0268b88",
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
