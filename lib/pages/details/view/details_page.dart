import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.favorite),
        label: const Text('Adopt'),
      ),
      body: Column(
        children: [
          Container(
            height: mediaQuery.size.height * 0.5,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
