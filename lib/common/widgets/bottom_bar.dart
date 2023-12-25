import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features//screens/account_screen.dart';
import 'package:amazon/features/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_badged/badge_position.dart';
import 'package:flutter_badged/flutter_badge.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _pageIndex = 0;
  double bottomBarWidth = 30;
  double bottomBarBorderWidth = 5;
  int _onItemTapped = 0;
  List<Widget> pages = [
    const HomeScreen(),
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
              label: "Category",
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
                child: const Icon(Icons.dashboard),
              ),
            ),
            BottomNavigationBarItem(
              label: "Account",
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
                child: const Icon(Icons.person),
              ),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              backgroundColor: Colors.white,
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: _pageIndex == 3
                            ? GlobalVariables.selectedNavBarColor
                            : GlobalVariables.unseelectedNavBorder,
                        width: bottomBarBorderWidth),
                  ),
                ),
                child: FlutterBadge(
                  icon: Icon(Icons.shopping_cart),
                  itemCount: 3,
                  badgeColor: Colors.red,
                  position: BadgePosition.topRight(),
                  hideZeroCount: false,
                  borderRadius: 20.0,
                ),
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
