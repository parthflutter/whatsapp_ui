
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/home/view/status_screen.dart';

import 'call_screen.dart';
import 'home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "Chats",),
                Tab(text: "Status",),
                Tab(text: "Calls",),
              ],
            ),
            backgroundColor: Color(0xff00897b),
            title: Text("WhatsApp"),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.camera_enhance_outlined),
                  SizedBox(width: 25),
                  Icon(Icons.search),
                  SizedBox(width: 25),
                  Icon(Icons.more_vert),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              home_screen(),
              Status_screen(),
              Call_Screen(),
            ],
          ),
        ),
      ),
    );
  }
}
