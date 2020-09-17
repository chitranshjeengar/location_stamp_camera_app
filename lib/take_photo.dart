import 'package:camera/camera.dart';
// import 'package:camera/new/camera.dart';
import 'package:flutter/material.dart';

class TakePhotoScreen extends StatefulWidget {
  final CameraDescription camera;
  const TakePhotoScreen({Key key, @required this.camera}) : super(key: key);
  @override
  _TakePhotoScreenState createState() => _TakePhotoScreenState();
}

class _TakePhotoScreenState extends State<TakePhotoScreen> {
  CameraController _controller;
  Future<void> _initialiseController;

  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.high,
    );
    _initialiseController = _controller.initialize();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Photo'),
      ),
      body: FutureBuilder<void>(
        future: _initialiseController,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done)
            return CameraPreview(_controller);
          else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}
