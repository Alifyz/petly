// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:pet_project/pages/home/home.dart';
import 'package:pet_project/pages/login/login.dart';
import 'package:pet_project/pages/pages_helper.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      initialRoute: PagesHelper.loginPage,
      routes: {
        PagesHelper.loginPage: (context) => const LoginPage(),
        PagesHelper.homePage: (context) => const HomePage(),
      },
    );
  }
}
