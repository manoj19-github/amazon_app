

import 'package:amazon/common/widgets/custom_page_route.dart';
import 'package:amazon/features/admin/screens/admin_screen.dart';
import 'package:amazon/features/screens/auth_screens.dart';
import 'package:amazon/features/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case AuthStateScreen.routeName:
      return CustomPageRoute2(child: AuthStateScreen(),);
    case HomeScreen.routeName:
      return CustomPageRoute2(
        child: HomeScreen(),
      );
    case AdminScreen.routeName:
      return CustomPageRoute2(
        child: AdminScreen(),
      );
    default:
      return CustomPageRoute2(child: Scaffold(body:Center(child:Text("Screen does not exists!"),),),);


  }
}