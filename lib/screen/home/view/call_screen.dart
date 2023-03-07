import 'package:flutter/material.dart';

class Call_Screen extends StatefulWidget {
  const Call_Screen({Key? key}) : super(key: key);

  @override
  State<Call_Screen> createState() => _Call_ScreenState();
}

class _Call_ScreenState extends State<Call_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.link),
                backgroundColor: Color(0xff00897b),),
              title: Text("Create call link"),
              subtitle: Text(
                "Share a link for your WhatsApp call",
                style: TextStyle(fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade700
                    ),
                  ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading:
                      CircleAvatar(backgroundImage: AssetImage("FlutterLogo"),),
                      title: Text("Flutter Developer"),
                      subtitle: Text(
                        "Today 10:00 PM",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Icon(Icons.video_call_rounded,color: Color(0xff00897b),),
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
