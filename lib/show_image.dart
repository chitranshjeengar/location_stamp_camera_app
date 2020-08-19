import 'package:flutter/material.dart';
import 'dart:io';

class ShowImage extends StatefulWidget {
  final File img;
  ShowImage(this.img);

  ShowImageState createState() => ShowImageState();
}

class ShowImageState extends State<ShowImage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Preview'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Image.file(
          widget.img,
        ),
      ),
    );
  }
}
