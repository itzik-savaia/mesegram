// import 'package:dio/dio.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
// import 'package:flutter_mesegram/views/bar.dart';
// import 'package:flutter_mesegram/views/home.dart';
// import '../services/account_api.dart';
// import 'bar.dart';
import '../models/account.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  double get randHeight => Random().nextInt(100).toDouble();

  static int _selectedIndex = 0;
  final tabs = [
    Container(
      child: SearchGrid(),
    ),
    Container(
      child: SearchPeople(),
    ),
  ];
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFEEEEEE),
          bottom: PreferredSize(
            preferredSize: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Flexible(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Search'),
                    onChanged: (text) {
                      print(text.length);
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    controller: _textController,
                  ),
                ),
                _textController.text.length >= 0
                    ? new Container(
                        child: IconButton(
                          icon: new Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 0;
                              _textController.clear();
                            });
                          },
                        ),
                      )
                    : new Container(
                        height: 0.0,
                      ),
              ],
            ),
          ),
        ),
      ),
      body: tabs[_selectedIndex],
    );
  }
}

class SearchPeople extends StatefulWidget {
  @override
  _SearchPeopleState createState() => _SearchPeopleState();
}

List<Account> accounts = [
  Account(
    username: "asd12",
    userImage:
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asddfw4",
    userImage:
        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asd23f",
    userImage:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asdf2fw",
    userImage:
        "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asd12",
    userImage:
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asddfw4",
    userImage:
        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asd23f",
    userImage:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asdf2fw",
    userImage:
        "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asd12",
    userImage:
        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asddfw4",
    userImage:
        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asd23f",
    userImage:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
  Account(
    username: "asdf2fw",
    userImage:
        "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ),
];

class _SearchPeopleState extends State<SearchPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: accounts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: FadeInImage(
                                        image:
                                            NetworkImage(accounts[i].userImage),
                                        placeholder: AssetImage(
                                            "assets/placeholder.png"),
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(accounts[i].username),
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(SimpleLineIcons.options_vertical),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ));
                })),
      ],
    )));
  }
}

class SearchGrid extends StatefulWidget {
  SearchGrid({Key key}) : super(key: key);

  @override
  _SearchGridState createState() => _SearchGridState();
}

class _SearchGridState extends State<SearchGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 3,
        children: Colors.primaries.map((color) {
          return Container(color: color, height: 150.0);
        }).toList(),
      ),
    );
  }
}
