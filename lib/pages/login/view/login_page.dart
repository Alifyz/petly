import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/common/widgets/background_video.dart';
import 'package:pet_project/common/widgets/buttons.dart';
import 'package:pet_project/pages/login/cubit/login_cubit.dart';
import 'package:pet_project/pages/pages_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessful) {
            navigator.pushNamed(PagesHelper.homePage);
          }
          if (state is LoginFailed) {
            //TODO navigate to an error page
          }
        },
        child: const LoginView(),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
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
                        icon: const Icon(Icons.pets_sharp),
                        onPressed: () {
                          context.read<LoginCubit>().loginWithGoogle();
                        },
                        title: 'Login with Google',
                        primary: true,
                      ),
                      PetlyButton(
                        icon: const Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                        onPressed: () => navigator.pushNamed(
                          PagesHelper.homePage,
                        ),
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
