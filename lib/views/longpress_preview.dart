import 'dart:ui';
import 'package:flutter/material.dart';

class LongPressPreview extends StatefulWidget {
  @override
  _LongPressPreviewState createState() => _LongPressPreviewState();
}

class _LongPressPreviewState extends State<LongPressPreview> {
  String description = "SAP Consulting Pvt. LTD, formed in 2002, is a leading provider of technical and business solutions. The organization has strength of 6529 employees spread across five locations – New York, California, Austin, Omaha and San Antonio.";
  bool showPreview = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Long press preview demo"),
        backgroundColor: Color(0xff3DA468),
      ),
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onLongPress: (){
                setState(() {
                  showPreview = true;
                });
              },
              onLongPressEnd: (a){
                setState(() {
                  showPreview = false;
                });
              },

                child: Container(
                  height: 80,
                  child: Card(
                      color: Colors.blue,
                      child: ListTile(
                        title: Text("Longpress to see full description"),
                        subtitle: Column(
                          children: [
                            Text("Created by Name"),
                            description.length >= 15? Text("Description: ${description.substring(0,15)}..."): Text("Description: $description"),
                          ],
                        ),
                        leading: Icon(Icons.supervised_user_circle),
                      )
                  ),
                ),
              ),
            ),
            if(showPreview)...[
            BackdropFilter(
            filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0
                 )
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    color: Colors.white,
                    child: Text("Description: $description", style: TextStyle(color: Colors.teal),),
                  ),
                ),
              )
            ]
        ],
      )
    );

  }
}
