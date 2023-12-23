

import 'package:amazon/common/widgets/custom_page_route.dart';
import 'package:amazon/features/auth/screens/auth_screens.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case AuthStateScreen.routeName:
      return CustomPageRoute2(child: AuthStateScreen(),);
    default:
      return CustomPageRoute2(child: Scaffold(body:Center(child:Text("Screen does not exists!"),),),);


  }
}