import 'package:flutter/material.dart';

class TvView extends StatefulWidget {
  @override
  _TvViewState createState() => _TvViewState();
}

class _TvViewState extends State<TvView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("TV"),
        ),
      ),
    );
  }
}
