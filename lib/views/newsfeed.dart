import 'package:flutter/material.dart';



class NewsFeed extends StatefulWidget {
  String postTitle;
  String postDescription;
  String dropDownValue;
  NewsFeed({this.postTitle, this.postDescription, this.dropDownValue});
  @override
  _NewsFeedState createState() => _NewsFeedState();
}
enum postColor {
  none,
  question,
  event,
  announcement,
  poll,
}
class _NewsFeedState extends State<NewsFeed> {
  postColor color = postColor.none;
  String get title => widget.postTitle;
  String get dropDownMenuValue => widget.dropDownValue;
  int index;

  Map<String, dynamic> posts;
  @override
  void initState() {
    // TODO: implement initState
    typeOfPostCheck();
    posts = {
      'title': widget.postTitle,
      'description': widget.postDescription,
    };
    super.initState();
  }

  typeOfPostCheck()
  {
    if(widget.dropDownValue == 'Question')
      color = postColor.question;
    else if(widget.dropDownValue == 'Announcement')
      color = postColor.announcement;
    else if(widget.dropDownValue == 'Event')
      color = postColor.event;
    else if(widget.dropDownValue == 'Poll')
      color = postColor.poll;
    else
      print(" type of PostCheck error");
  }
  @override
  Widget build(BuildContext context) {
    Container colorContainer()
    {
      if(color == postColor.announcement)
        {
          return Container(
            height: 20,
            width: 420,
            color: Colors.red,
            child: Text(widget.dropDownValue),
          );
        }
      else if(color == postColor.event)
      {
        return Container(
          height: 20,
          width: 420,
          color: Colors.blue,
          child: Text(widget.dropDownValue),
        );
      }
      else if(color == postColor.question)
      {
        return Container(
          height: 20,
          width: 420,
          color: Colors.green,
          child: Text(widget.dropDownValue),
        );
      }
      else if(color == postColor.poll)
      {
        return Container(
          height: 20,
          width: 420,
          color: Colors.yellow,
          child: Text(widget.dropDownValue),
        );
      }
      else
        return null;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Newsfeed demo"),
          backgroundColor: Color(0xff3DA468),
        ),
        body: ListView.builder(
            itemCount: posts.length - 1,
            itemBuilder: (context, posts) {
              return Card(
                  child: Column(
                children: [
                  Row(
                    children: [
                      colorContainer(),
                    ],
                  ),
                  ListTile(
                    title: Text(widget.postTitle),
                    subtitle: Text(widget.postDescription),
                  )
                ],
              ));
            }));
  }
}
