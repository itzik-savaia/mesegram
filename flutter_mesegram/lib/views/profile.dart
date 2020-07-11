import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mesegram/models/account.dart';
import 'package:flutter_mesegram/models/posts.dart';

class Choice {
  const Choice({this.icon});
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(icon: Icons.assignment_ind),
  const Choice(icon: Icons.apps),
];

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  double get randHeight => Random().nextInt(100).toDouble();

  List<Widget> _randomChildren;

  List<Widget> _randomHeightWidgets(BuildContext context) {
    _randomChildren ??= List.generate(1, (index) {
      final height = randHeight.clamp(
        200.0,
        MediaQuery.of(context).size.width,
      );
      return Container(
        color: Colors.primaries[index],
        height: height,
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFEEEEEE),
          flexibleSpace: ListView.builder(
            itemCount: account.length,
            itemBuilder: (ctx, i) {
              return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(account[i].userImage),
                          radius: 50,
                        ),
                        Text(
                          account[i].fullname,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Text(
                                    account[i].posts,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text("Posts")
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [
                                  Text(
                                    account[i].followers,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text("Fllowers"),
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [
                                  Text(
                                    account[i].follow,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text("Follow"),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          bottom: PreferredSize(
            preferredSize: null,
            child: Container(
              width: 350,
              child: RaisedButton(
                onPressed: () {},
                child: Container(
                    child: const Text('Edit Profile',
                        style: TextStyle(fontSize: 15))),
              ),
            ),
          ),
        ),
      );
    });

    return _randomChildren;
  }

  List<Post> posts = [
    Post(
        username: "asd12",
        userImage:
            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
        postImage:
            "https://images.unsplash.com/photo-1502899576159-f224dc2349fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60",
        caption: "osidfjsodfosdfnsdfn"),
  ];

  List<Account> account = [
    Account(
        username: "asd123",
        fullname: "asd das",
        userImage:
            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
        email: "asd123@gmail.com",
        token: "sdfsdf4f2fwefwrwerwr",
        isAdmin: true,
        date: "12.6.2020",
        follow: "554",
        followers: "323",
        posts: "22"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: AppBar(
              elevation: 0,
              backgroundColor: Color(0xFFEEEEEE),
              flexibleSpace: ListView.builder(
                  itemCount: account.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                          Column(children: <Widget>[
                            Text(
                              account[i].username,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ])
                        ]));
                  }))),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  _randomHeightWidgets(context),
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Container(
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  tabs: choices.map((Choice choice) {
                    return Tab(
                      icon: Icon(choice.icon),
                      child: Container(
                        width: 180,
                      ),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
