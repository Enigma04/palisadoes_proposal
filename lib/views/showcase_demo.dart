import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';


class ShowCasing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowCaseWidget(
        builder: Builder(
          builder: (context)=> ShowCaseDemo(),
        ),
      ),
    );
  }
}


class ShowCaseDemo extends StatefulWidget {
  @override
  _ShowCaseDemoState createState() => _ShowCaseDemoState();
}

class _ShowCaseDemoState extends State<ShowCaseDemo> {
  GlobalKey iconKey = GlobalKey();
  GlobalKey textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ShowCaseWidget.of(context).startShowCase([iconKey, textKey]);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Showcase Highlight demo"),
        backgroundColor: Color(0xff3DA468),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Showcase(
                  key: iconKey,
                  child: Icon(Icons.event),
                  description: 'This is an icon',
                title: 'Behold!',
                shapeBorder: CircleBorder(),
              ),
              SizedBox(height: 50,),
              Showcase(
                key: textKey,
                child: Text("This text will be highlighted"),
                description: 'This is a text',
                title: 'Just in case you did not know!',
                shapeBorder: BeveledRectangleBorder(),
              ),
              SizedBox(height: 10,),
              TextButton(
                  onPressed: startHighlight, child: Text("Start highlighting")
              )
            ],
          ),
        )
      ),
    );
  }
  startHighlight()
  {
    ShowCaseWidget.of(context).startShowCase([iconKey, textKey]);
  }
}
