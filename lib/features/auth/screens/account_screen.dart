import 'package:amazon/common/widgets/below_appbar.dart';
import 'package:amazon/common/widgets/orders.dart';
import 'package:amazon/common/widgets/top_buttons.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            actions: [],
            flexibleSpace: Container(
              decoration:
                  const BoxDecoration(gradient: GlobalVariables.appBarGradient),
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/images/amazon_in.png',
                      width: 120, height: 45, color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.notifications_outlined),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
        children: [
          BelowAppBar(),
          const SizedBox(height: 20),
          TopButtons(),
          SizedBox(height: 20),
          OrdersWidget(),
        ],
      ),
    );
  }
}
