import 'package:flutter/material.dart';
import 'package:multipage_form_test/views/newsfeed.dart';


class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  TextEditingController _titleController = new TextEditingController();

  TextEditingController _descriptionController = new TextEditingController();

  String get title => _titleController.text;

  String get description => _descriptionController.text;


  String dropDown = 'Question';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Newsfeed demo"),
        backgroundColor: Color(0xff3DA468),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              hintText: "Enter title"
            ),
            maxLength: 30,
          ),
          SizedBox(height: 10,),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(
                hintText: "Enter description"
            ),
          ),
          SizedBox(height: 10,),
          DropdownButton<String>(
            value: dropDown,
            onChanged: (String newValue){
              setState(() {
                dropDown = newValue;
                print(dropDown);
              });
            },
              items: <String>['Question', 'Announcement', 'Event', 'Poll']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                  onTap: (){
                    dropDown = value;
                  },
                );
              }).toList(),
          ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("Click me"),
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  NewsFeed(postTitle: title, postDescription: description, dropDownValue: dropDown,)));
              }
          )
        ],
      ),
    );
  }
}
