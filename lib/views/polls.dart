import 'package:flutter/material.dart';
import 'package:polls/polls.dart';

class Poll extends StatefulWidget {
  @override
  _PollState createState() => _PollState();
}

class _PollState extends State<Poll> {
  double option1 = 2.0;
  double option2 = 0.0;
  double option3 = 2.0;
  double option4 = 3.0;

  String user = "king@mail.com";
  Map usersWhoVoted = {'sam@mail.com': 3, 'mike@mail.com' : 4, 'john@mail.com' : 1, 'kenny@mail.com' : 1};
  String creator = "eddy@mail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child:Polls(
          children: [
            // This cannot be less than 2, else will throw an exception
            Polls.options(title: 'Below 10', value: option1),
            Polls.options(title: 'Below 20', value: option2),
            Polls.options(title: 'Below 35', value: option3),
            Polls.options(title: 'Below 60', value: option4),
          ], question: Text('how old are you?'),
          currentUser: this.user,
          creatorID: this.creator,
          voteData: usersWhoVoted,
          userChoice: usersWhoVoted[this.user],
          onVoteBackgroundColor: Colors.blue,
          leadingBackgroundColor: Colors.blue,
          backgroundColor: Colors.black,
          onVote: (choice) {
            print(choice);
            setState(() {
              this.usersWhoVoted[this.user] = choice;
            });
            if (choice == 1) {
              setState(() {
                option1 += 1.0;
              });
            }
            if (choice == 2) {
              setState(() {
                option2 += 1.0;
              });
            }
            if (choice == 3) {
              setState(() {
                option3 += 1.0;
              });
            }
            if (choice == 4) {
              setState(() {
                option4 += 1.0;
              });
            }
          },
        ),
      ),
    );
  }
}
