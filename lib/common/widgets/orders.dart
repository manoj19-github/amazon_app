import 'package:amazon/common/widgets/single_product.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:flutter/material.dart';

class OrdersWidget extends StatefulWidget {
  const OrdersWidget({super.key});

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
  List list = [
    'https://images.unsplash.com/file-1695862006750-2a3aca1bfdfaimage?dpr=2&w=416&auto=format&fit=crop&q=60',
    'https://images.unsplash.com/file-1695862006750-2a3aca1bfdfaimage?dpr=2&w=416&auto=format&fit=crop&q=60',
    'https://images.unsplash.com/file-1695862006750-2a3aca1bfdfaimage?dpr=2&w=416&auto=format&fit=crop&q=60',
    'https://images.unsplash.com/file-1695862006750-2a3aca1bfdfaimage?dpr=2&w=416&auto=format&fit=crop&q=60',
    'https://images.unsplash.com/file-1695862006750-2a3aca1bfdfaimage?dpr=2&w=416&auto=format&fit=crop&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See All',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: GlobalVariables.selectedNavBarColor),
              ),
            ),
          ],
        ),
        // display  orders
        Container(
          height: 180,
          padding: const EdgeInsets.only(left: 10, right: 0, top: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: ((context, index) {
              return SingleProduct(imageURL: list[index]);
            }),
          ),
        ),
      ],
    );
  }
}
