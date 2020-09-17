import 'dart:io';
import 'package:camera/camera.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:locationstampapp/show_image.dart';
import 'package:locationstampapp/take_photo.dart';

class MainScreen extends StatefulWidget {
  // final CameraDescription camera;
  // const MainScreen(@required this.camera);
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  File imgFile;

  Future<void> openCamera() async {
    var pic = await ImagePicker().getImage(source: ImageSource.camera);
    this.setState(() {
      imgFile = (pic != null ? File(pic.path) : null);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Stamp Camera'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () async {
              await openCamera();
              if (imgFile != null)
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => ShowImage(imgFile)),
                );
            },
            child: Text('Open Cam Feed')),
      ),
    );
  }
}
