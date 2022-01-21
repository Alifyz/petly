import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BackgroundVideo extends StatefulWidget {
  const BackgroundVideo({Key? key}) : super(key: key);

  @override
  BackgroundVideoState createState() => BackgroundVideoState();
}

class BackgroundVideoState extends State<BackgroundVideo> {
  late VideoPlayerController _playerController;
  Future<void>? _initVideoPlayer;

  @override
  void initState() {
    _playerController =
        VideoPlayerController.asset('assets/video/dog-rendered.mp4');

    _playerController
      ..setLooping(true)
      ..setVolume(0)
      ..play();

    _initVideoPlayer = _playerController.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initVideoPlayer,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _playerController.value.size.width,
                height: _playerController.value.size.height,
                child: VideoPlayer(_playerController),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
