import 'dart:ui';
import 'package:flutter/material.dart';

class LongPressPreview extends StatefulWidget {
  @override
  _LongPressPreviewState createState() => _LongPressPreviewState();
}

class _LongPressPreviewState extends State<LongPressPreview> {
  String description = "wkjdn kjdn dkjndkjdnkjdnfkjenfekjfnefkjnf efefnesfkjenf enfns fjenfeskjfn wefkjfnsd f efksnfewkjfnrsfskjf ef";
  bool showPreview = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Long press preview demo"),
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

                child: Card(
                    color: Colors.greenAccent,
                    child: ListTile(
                      title: Text("Organization"),
                      subtitle: Text("Created by Name"),
                      leading: description.length >= 15? Text("Description: ${description.substring(0,15)}..."): Text("Description: $description"),
                    )
                ),
              ),
            ),
            if(showPreview)...[
            BackdropFilter(
            filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0
                 )
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  child: Text("Description: $description", style: TextStyle(color: Colors.teal),),
                ),
              )
            ]
        ],
      )
    );

  }
}
