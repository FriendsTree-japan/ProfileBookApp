import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';

class profile_001 extends StatefulWidget {
  @override
  _profile_001 createState() => _profile_001();
}

class _profile_001 extends State<profile_001> {
  ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Align(
            alignment: Alignment.bottomLeft,
            child: Text('あなたのニックネームはなんですか'),
          ),

          Align(
            alignment: Alignment.bottomLeft,
                child: TextField(),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Text('最近の趣味はなんですか'),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: TextField(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('好きな人・もの・ことは何ですか'),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: TextField(),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Text('みんなに一言'),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: TextField(),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyApp()));
                }
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: RaisedButton(
                child: Text('保存'),
                onPressed: () {
                  Screenshot(
                    controller: screenshotController,
                    child: Text("保存されました")
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}


