import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:async';
// import 'package:path/path.dart' show join;

// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' show join;
// import 'package:path_provider/path_provider.dart';

class NewPost extends StatefulWidget {
  // final CameraDescription camera;
  const NewPost({
    Key key,
    // @required this.camera,
  }) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  // CameraController _controller;
  // Future<void> _initializeControllerFuture;

  // @override
  // void initState() {
  //   super.initState();
  //   // To display the current output from the camera,
  //   // create a CameraController.
  //   _controller = CameraController(
  //     // Get a specific camera from the list of available cameras.
  //     widget.camera,
  //     // Define the resolution to use.
  //     ResolutionPreset.medium,
  //   );

  //   // Next, initialize the controller. This returns a Future.
  //   _initializeControllerFuture = _controller.initialize();
  // }

  // @override
  // void dispose() {
  //   // Dispose of the controller when the widget is disposed.
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // FutureBuilder<void>(
    //   future: _initializeControllerFuture,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       // If the Future is complete, display the preview.
    //       return CameraPreview(_controller);
    //     } else {
    //       // Otherwise, display a loading indicator.
    //       return Center(child: CircularProgressIndicator());
    //     }
    //   },
    // );

    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(onPressed: () {}, child: Text("Select Image"))

            // FloatingActionButton(
            //   child: Icon(Icons.camera_alt),
            //   // Provide an onPressed callback.
            //   onPressed: () async {
            //     // Take the Picture in a try / catch block. If anything goes wrong,
            //     // catch the error.
            //     try {
            //       // Ensure that the camera is initialized.
            //       await _initializeControllerFuture;

            //       // Construct the path where the image should be saved using the path
            //       // package.
            //       final path = join(
            //         // Store the picture in the temp directory.
            //         // Find the temp directory using the `path_provider` plugin.
            //         (await getTemporaryDirectory()).path,
            //         '${DateTime.now()}.png',
            //       );

            //       // Attempt to take a picture and log where it's been saved.
            //       await _controller.takePicture(path);
            //     } catch (e) {
            //       // If an error occurs, log the error to the console.
            //       print(e);
            //     }
            //   },
            // )
          ],
        )),
      ),
    );
  }
}
// Future<void> main() async {
//   // Ensure that plugin services are initialized so that `availableCameras()`
//   // can be called before `runApp()`
//   WidgetsFlutterBinding.ensureInitialized();

//   // Obtain a list of the available cameras on the device.
//   final cameras = await availableCameras();

//   // Get a specific camera from the list of available cameras.
//   final firstCamera = cameras.first;

//   runApp(
//     MaterialApp(
//       theme: ThemeData.dark(),
//       home: NewPost(
//         // Pass the appropriate camera to the NewPost widget.
//         camera: firstCamera,
//       ),
//     ),
//   );
// }

// A screen that allows users to take a picture using a given camera.
// class NewPost extends StatefulWidget {
//   final CameraDescription camera;

//   const NewPost({
//     Key key,
//     @required this.camera,
//   }) : super(key: key);

//   @override
//   NewPostState createState() => NewPostState();
// }

// class NewPostState extends State<NewPost> {
//   CameraController _controller;
//   Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     // To display the current output from the Camera,
//     // create a CameraController.
//     _controller = CameraController(
//       // Get a specific camera from the list of available cameras.
//       widget.camera,
//       // Define the resolution to use.
//       ResolutionPreset.medium,
//     );

//     // Next, initialize the controller. This returns a Future.
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed.
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Take a picture')),
//       // Wait until the controller is initialized before displaying the
//       // camera preview. Use a FutureBuilder to display a loading spinner
//       // until the controller has finished initializing.
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             // If the Future is complete, display the preview.
//             return CameraPreview(_controller);
//           } else {
//             // Otherwise, display a loading indicator.
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.camera_alt),
//         // Provide an onPressed callback.
//         onPressed: () async {
//           // Take the Picture in a try / catch block. If anything goes wrong,
//           // catch the error.
//           try {
//             // Ensure that the camera is initialized.
//             await _initializeControllerFuture;

//             // Construct the path where the image should be saved using the
//             // pattern package.
//             final path = join(
//               // Store the picture in the temp directory.
//               // Find the temp directory using the `path_provider` plugin.
//               (await getTemporaryDirectory()).path,
//               '${DateTime.now()}.png',
//             );

//             // Attempt to take a picture and log where it's been saved.
//             await _controller.takePicture(path);

//             // If the picture was taken, display it on a new screen.
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DisplayPictureScreen(imagePath: path),
//               ),
//             );
//           } catch (e) {
//             // If an error occurs, log the error to the console.
//             print(e);
//           }
//         },
//       ),
//     );
//   }
// }

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.file(File(imagePath)),
    );
  }
}
