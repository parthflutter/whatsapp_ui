

import 'package:flutter/material.dart';

class Status_screen extends StatefulWidget {
  const Status_screen({Key? key}) : super(key: key);

  @override
  State<Status_screen> createState() => _Status_screenState();
}

class _Status_screenState extends State<Status_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("FlutterLogo"),),
              title: Text("My status"),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recent updates",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade700),
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("FlutterLogo"),),
                      title: Text("Flutter Developer"),
                      subtitle: Text(
                        "Today 11:00 AM",
                        style: TextStyle(fontSize: 14),
                      ),
                    );
                  },
                  itemCount: 10),
            ),
          ],
        ),
        floatingActionButton:  FloatingActionButton(
          backgroundColor: Color(0xff00897b),
          onPressed: () {},
          child: Icon(
            Icons.camera_enhance_outlined,
          ),
        ),
      ),
    );
  }
}
