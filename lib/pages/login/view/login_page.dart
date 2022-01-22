import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';
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
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black87,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
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
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.pets,
                                  size: 56,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Pet.ly',
                                  style: PetlyTextTheme.petly.copyWith(
                                    color: Colors.white,
                                    fontSize: 64,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'A safe place for Pets\nand owners :)',
                              style: PetlyTextTheme.subtitle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
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
