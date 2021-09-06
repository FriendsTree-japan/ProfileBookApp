import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';
import '01_Select.dart';
import '01_Edit.dart';
import '01_Setting.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  ),
);


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}


class _State extends State<MyApp>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _screen = 0;
  var _navIndex = 0;
  var _label = '';
  var _titles = ['プロフィール帳の一覧', 'プロフィール帳の編集', 'Lineで送る', '設定を変更する'];

  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.house,color: Colors.black),
        title: Text('Select',style:TextStyle(color:Colors.black,fontSize:10)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.create_outlined,color: Colors.black),
        title: Text('Edit',style:TextStyle(color:Colors.black,fontSize:10)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.app_settings_alt_outlined,color: Colors.black),
        title: Text('Setting',style:TextStyle(color:Colors.black,fontSize:10)),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _screen,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('プロフィール帳'),
        leading: BackButton(
          color:Colors.white,
        ),
      ),
      body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _screen = index;
            });
          },
          children: [
            Select(),
            Edit(),
            Setting(),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screen,
        onTap: (index) {
          setState(() {
            _screen = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.easeOut);
          });
        },
        items: myBottomNavBarItems(),
      ),
    );
  }
}
