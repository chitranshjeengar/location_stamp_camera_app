import 'package:flutter/material.dart';
import 'package:locationstampapp/main_screen.dart';
import 'package:camera/camera.dart';

// List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();
  // final primaryCam = cameras.first;
  // final secondaryCam = cameras[1];
  // print('Camera Details - ' + cameras.toString());
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: MainScreen(),
    ),
  );
}
