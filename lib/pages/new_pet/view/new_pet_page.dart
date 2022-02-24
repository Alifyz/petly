import 'package:flutter/material.dart';

class NewPetPage extends StatelessWidget {
  const NewPetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        leading: const Icon(Icons.close),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.save),
        label: const Text('Save'),
      ),
      body: Column(
        children: [
          Container(
            height: 128,
            color: Colors.redAccent,
          ),
          TextFormField(
            initialValue: 'Pet name',
          ),
          TextFormField(
            initialValue: 'Pet Breed',
          ),
          TextFormField(
            initialValue: 'Age',
          ),
          TextFormField(
            initialValue: 'Weight',
          ),
        ],
      ),
    );
  }
}
