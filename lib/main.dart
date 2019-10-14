import 'package:bravass/pages/movie_data.dart';
import 'package:flutter/material.dart';
import 'package:bravass/pages/home_screen.dart';
import 'package:bravass/pages/splash_screen.dart';
import 'package:bravass/pages/home_profile.dart';
import 'package:bravass/pages/dashboard.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) =>HomePage(),
  "/intro": (BuildContext context) =>SplashScreen(),
  "/movie": (BuildContext contex) =>MovieData(),
  "/profilee": (BuildContext contex) =>HomeProfile(),
  "/dashboard": (BuildContext contex) =>Dahsboard(),

};

void main(){
  runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Dahsboard(),
        routes: routes,
      )
  );
}

