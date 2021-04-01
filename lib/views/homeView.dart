import 'package:flutter/material.dart';
import 'package:multipage_form_test/views/dark_theme%20switching.dart';
import 'package:multipage_form_test/views/longpress_preview.dart';
import 'package:multipage_form_test/views/newsfeed_post.dart';
import 'package:multipage_form_test/views/notification_test.dart';
import 'package:multipage_form_test/views/polls.dart';
import 'package:multipage_form_test/views/showcase_demo.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3DA468),
        title: Text("Talawa GSoC Proposal"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LongPressPreview())),
              child: Container(
                color: Colors.red,
                height: 50,
                width: 420,
                child: Text("Long press preview",style: TextStyle(fontSize: 35),),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Post())),
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 420,
                child: Text("NewsFeed",style: TextStyle(fontSize: 35),),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Poll())),
              child: Container(
                color: Colors.green,
                height: 50,
                width: 420,
                child: Text("Poll implementation",style: TextStyle(fontSize: 35),),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DarkTheme())),
              child: Container(
                color: Colors.yellow,
                height: 50,
                width: 420,
                child: Text("Dark Theme",style: TextStyle(fontSize: 35),),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DropDownNotification())),
              child: Container(
                color: Colors.purple,
                height: 50,
                width: 420,
                child: Text("Notification bell and full sized list",style: TextStyle(fontSize: 25),),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowCasing())),
              child: Container(
                color: Colors.teal,
                height: 50,
                width: 420,
                child: Text("Highlighting certain parts of UI",style: TextStyle(fontSize: 25),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
