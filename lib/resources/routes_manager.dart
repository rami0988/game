import 'package:flutter/material.dart';
import 'package:game/resources/strings_manager.dart';


import '../modules/core/login_view.dart';
import '../modules/home/home_view.dart';




class Routes{
   static const String LoginRoute = "/Login";
  static const String homeRoute = "/home";


}
class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case Routes.LoginRoute:
      return MaterialPageRoute(builder: (_)=> LoginPage());
      case Routes.homeRoute:
      return MaterialPageRoute(builder: (_)=>  Home());        
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>
    Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound),
      ),
      body: const Center(child: Text(AppStrings.noRouteFound)),
    )
    );
  }
}