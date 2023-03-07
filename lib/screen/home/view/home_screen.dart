
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("FlutterLogo")),
                      title: Text("Flutter Developer"),
                      subtitle: Text("Hello"),
                      trailing: Text("8:25 AM",style: TextStyle(fontSize: 11),),
                    );
                  },itemCount: 10,),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton:  FloatingActionButton(
          backgroundColor: Color(0xff00897b),
          onPressed:(){},child: Icon(Icons.chat,)),
      ),
    );
  }
}