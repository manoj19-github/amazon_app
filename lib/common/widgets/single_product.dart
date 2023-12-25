import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 1.5),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Container(
            width: 180,
            padding: const EdgeInsets.all(7),
            child: Image.network(imageURL, fit: BoxFit.cover, width: 180),
          )),
    );
  }
}
