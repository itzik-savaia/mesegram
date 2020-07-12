import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mesegram/models/account.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class OffersView extends StatefulWidget {
  const OffersView({Key key}) : super(key: key);

  @override
  _OffersViewState createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
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
                                RaisedButton(
                                  color: Colors.lightBlue,
                                  child: Text("Follow"),
                                  onPressed: () {
                                    // Follow
                                  },
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
