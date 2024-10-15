import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BackgroundVideoWidget extends StatefulWidget {
  const BackgroundVideoWidget({super.key});

  @override
  State<BackgroundVideoWidget> createState() => _BackgroundVideoWidgetState();
}

class _BackgroundVideoWidgetState extends State<BackgroundVideoWidget> {
  late final VideoPlayerController videoController;

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset('assets/videos/video.mp4')
      ..initialize().then((_) {
        setState(() {}); // Update the UI after initialization
        videoController.play();
        videoController.setLooping(true);
      });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return videoController.value.isInitialized
        ? AspectRatio(
      aspectRatio: videoController.value.aspectRatio,
      child: VideoPlayer(videoController),
    ) : Center(child: CircularProgressIndicator());
  }
}
