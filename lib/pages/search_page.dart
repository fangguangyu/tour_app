
import 'package:flutter/material.dart';
import 'package:tour_app/widget/search_bar.dart';

class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() => _SearchPageState();

}

class _SearchPageState extends State<SearchPage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            SearchBar(
              hideLeft: true,
              defaultText: 'hhhh',
              hint: '22',
              leftButtonClick: () {
                Navigator.pop(context);
              },
              onChanged: _onTextChange,
            )
          ],
        )
    );
  }

  _onTextChange(text) {

  }
}