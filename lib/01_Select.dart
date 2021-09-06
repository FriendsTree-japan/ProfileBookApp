import 'package:flutter/material.dart';
import 'package:profile_box_test/02_profile_002.dart';
import '02_profile_001.dart';
import '02_profile_002.dart';


class Select extends StatefulWidget {
  @override
  _SelectState createState() => _SelectState();
}


class _SelectState extends State<Select> {
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
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('プロフィール帳を作成する①'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => profile_001()));
                }
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('プロフィール帳を作成する②'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => profile_002()));
                }
            ),
          ),
        ],
      ),
    );
  }
}