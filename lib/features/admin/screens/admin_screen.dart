import 'package:amazon/features/admin/screens/post_sccreen.dart';
import 'package:amazon/features/screens/account_screen.dart';
import 'package:amazon/features/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:amazon/common/widgets/below_appbar.dart';
import 'package:amazon/common/widgets/orders.dart';
import 'package:amazon/common/widgets/top_buttons.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:flutter_badged/badge_position.dart';
import 'package:flutter_badged/flutter_badge.dart';

class AdminScreen extends StatefulWidget {
  static const String routeName = "/admin";
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _pageIndex = 0;
  double bottomBarWidth = 30;
  double bottomBarBorderWidth = 5;
  int _onItemTapped = 0;

  List<Widget> pages = [
    PostScreen(),
    const Center(
      child: Text('Category page'),
    ),
    AccountScreen(),
    const Center(
      child: Text('Cart page'),
    ),
  ];
  void updatePage(int val) {
    setState(() {
      _pageIndex = val;
    });
  }

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
              const Text("Admin",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black))
            ],
          ),
        ),
      ),
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: "Home",
              backgroundColor: Colors.white,
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: _pageIndex == 0
                            ? GlobalVariables.selectedNavBarColor
                            : GlobalVariables.unseelectedNavBorder,
                        width: bottomBarBorderWidth),
                  ),
                ),
                child: const Icon(Icons.home_outlined),
              ),
            ),
            BottomNavigationBarItem(
              label: "Analytics",
              backgroundColor: Colors.white,
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: _pageIndex == 1
                            ? GlobalVariables.selectedNavBarColor
                            : GlobalVariables.unseelectedNavBorder,
                        width: bottomBarBorderWidth),
                  ),
                ),
                child: const Icon(Icons.analytics_outlined),
              ),
            ),
            BottomNavigationBarItem(
              label: "Inbox",
              backgroundColor: Colors.white,
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: _pageIndex == 2
                            ? GlobalVariables.selectedNavBarColor
                            : GlobalVariables.unseelectedNavBorder,
                        width: bottomBarBorderWidth),
                  ),
                ),
                child: const Icon(Icons.all_inbox_outlined),
              ),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _pageIndex,
          selectedItemColor: GlobalVariables.selectedNavBarColor,
          unselectedItemColor: GlobalVariables.unselectedNavBarColor,
          backgroundColor: ThemeData().appBarTheme.backgroundColor,
          iconSize: 28,
          onTap: updatePage,
          elevation: 5),
    );
  }
}
