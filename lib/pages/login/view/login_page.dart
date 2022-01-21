import 'package:flutter/material.dart';
import 'package:pet_project/common/widgets/background_video.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackgroundVideo(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Petly'),
                            Text('A safe place for Pets'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Container(
                        color: Colors.grey,
                        width: 128,
                        height: 128,
                        child: const Placeholder(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login with Google'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login with Facebook'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
