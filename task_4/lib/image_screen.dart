import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();

}

class _ImageScreenState extends State<ImageScreen> {
  File? selectedImage;
  File? selectedVideo;
  VideoPlayerController? _controller;

  selectImage({required ImageSource source}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      selectedImage = File(image.path);
    } else {
      selectedImage = null;
    }
    setState(() {});
  }
  selectVideo({required ImageSource source}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: source);
    if (video != null) {
      selectedVideo = File(video.path);
    } else {
      selectedVideo = null;
    }
    print(selectedVideo);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              selectedImage != null
                  ? Image.file(selectedImage!, width: 300, height: 300)
                  : Text("No Image Selected"),
              SizedBox(height: 20),
              selectedVideo != null
                  ? Image.file(selectedImage!, width: 300, height: 300)
                  : Text("No Image Selected"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pick Image"),
                        actions: [
                          IconButton(
                            onPressed: () async {
                              await selectImage(source: ImageSource.camera);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.camera_alt),
                          ),
                          IconButton(
                            onPressed: () async {
                              await selectImage(source: ImageSource.gallery);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.browse_gallery),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Pick Image"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pick Video"),
                        actions: [
                          IconButton(
                            onPressed: () async {
                              await selectVideo(source: ImageSource.camera);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.videocam),
                          ),
                          IconButton(
                            onPressed: () async {
                              await selectVideo(source: ImageSource.gallery);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.video_library),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Pick Video"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
