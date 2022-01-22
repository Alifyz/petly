import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/common/widgets/background_video.dart';
import 'package:pet_project/common/widgets/buttons.dart';

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
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 48),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PetlyButton(
                        onPressed: () {},
                        title: 'Login with Google',
                        primary: true,
                      ),
                      PetlyButton(
                        onPressed: () {},
                        title: 'Login with Facebook',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Privacy Policy and Terms and Conditions',
                        style: PetlyTextTheme.headline.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
