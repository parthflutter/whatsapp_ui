
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/home/view/home_screen.dart';
import 'package:whatsapp_ui/screen/home/view/tabbar_screen.dart';

void main()
{
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=> HomeScreen(),
    },
  ),
  );
}