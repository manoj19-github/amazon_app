import 'package:amazon/common/widgets/bottom_bar.dart';
import 'package:amazon/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    print(user.email.toString());

    return Center(
      child: Text(
        user.username.toString(),
        style: TextStyle(color: Colors.black12, fontSize: 27),
      ),
    );
  }
}
