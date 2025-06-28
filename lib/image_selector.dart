import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class ImageSelector extends StatefulWidget {
  const ImageSelector({super.key});

  @override
  State<ImageSelector> createState() => _ImageSelectorState();
}

class _ImageSelectorState extends State<ImageSelector> {
  File? file;

  Future imageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        file = File(image.path);
      });
    }
  }

  Future imageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        file = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (file != null)
                ? Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(file!),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                : Container(
                  width: 300,
                  height: 300,
                  child: Lottie.asset(
                    'assets/Animation - 1750339060619.json',
                    width: 300,
                    height: 300,
                  ),
                ),
            // : CircularProgressIndicator(),
            // : Text("No Image Selected"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                imageFromGallery();
              },
              child: Text("Upload Image from gallery"),
            ),
            ElevatedButton(
              onPressed: () {
                imageFromCamera();
              },
              child: Text("Upload Image from camera"),
            ),
          ],
        ),
      ),
    );
  }
}
