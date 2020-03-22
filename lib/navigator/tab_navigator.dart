import 'package:flutter/material.dart';
import 'package:tour_app/pages/home_page.dart';
import 'package:tour_app/pages/my_page.dart';
import 'package:tour_app/pages/search_page.dart';
import 'package:tour_app/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigator createState() => _TabNavigator();
}

class _TabNavigator extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(hideLeft: true),
          TravelPage(),
          MyPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            print(index);
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomItem('首页', Icons.home, 0),
            _bottomItem('搜索', Icons.search, 1),
            _bottomItem('旅拍', Icons.camera_alt, 2),
            _bottomItem('我的', Icons.account_circle, 3)
          ]),
    );
  }

  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(icon, color: _defaultColor),
        activeIcon: Icon(icon, color: _activeColor),
        title: Text('首页',
            style: TextStyle(
                color: _currentIndex != index
                    ? _defaultColor
                    : _activeColor)));
  }
}
