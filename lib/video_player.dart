import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  FlickManager? flickManager;
  File? file;

  Future videoFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);

    if (video != null) {
      setState(() {
        file = File(video.path);
        // Dispose previous manager if any
        flickManager?.dispose();
        flickManager = FlickManager(
          videoPlayerController: VideoPlayerController.file(file!),
        );
      });
    }
  }

  @override
  void dispose() {
    flickManager?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (flickManager != null)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: FlickVideoPlayer(flickManager: flickManager!),
              )
            else
              Container(
                width: 300,
                height: 300,
                child: Lottie.asset(
                  'assets/Animation - 1750339060619.json',
                  width: 300,
                  height: 300,
                ),
              ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                videoFromGallery();
              },
              child: const Text("Upload video from gallery"),
            ),
          ],
        ),
      ),
    );
  }
}
