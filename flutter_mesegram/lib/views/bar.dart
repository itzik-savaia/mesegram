import 'package:flutter/material.dart';
import 'package:flutter_mesegram/views/home.dart';
import 'package:flutter_mesegram/views/messages.dart';
import 'package:flutter_mesegram/views/new_post.dart';
import 'package:flutter_mesegram/views/offers.dart';
import 'package:flutter_mesegram/views/profile.dart';
import 'package:flutter_mesegram/views/search.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mesegram/views/tv.dart';

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

class BarView extends StatefulWidget {
  @override
  _BarViewState createState() => _BarViewState();
}

class _BarViewState extends State<BarView> {
  static int _selectedIndex = 0;

  final tabs = [
    Container(
      child: HomeView(),
    ),
    Container(
      child: SearchView(),
    ),
    Container(
      child: NewPost(),
    ),
    Container(
      child: OffersView(),
    ),
    Container(
      child: ProfileView(),
    ),
    Container(child: TvView()),
    Container(
      child: MessagesView(),
    ),
    Container(
      child: SearchPeople(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Mesegram",
          style: TextStyle(color: Colors.black),
        ),
        leading: Container(
          child: IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            icon: Icon(
              AntDesign.instagram,
              color: Colors.black,
            ),
          ),
        ),
        // actions: <Widget>[
        //   IconButton(
        //       icon: Icon(
        //         MaterialIcons.live_tv,
        //         color: Colors.black,
        //       ),
        //       onPressed: () {
        //         setState(() {
        //           _selectedIndex = 6;
        //         });
        //       }),
        //   IconButton(
        //       icon: Icon(
        //         FontAwesome.send_o,
        //         color: Colors.black,
        //       ),
        //       onPressed: () {
        //         setState(() {
        //           _selectedIndex = 7;
        //         });
        //       }),
        // ],
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(''),
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.plus_square_o),
              title: Text(''),
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text(''),
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text(''),
              backgroundColor: Colors.black87),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.black,
        iconSize: 20,
        selectedFontSize: 0,
      ),
    );
  }
}
