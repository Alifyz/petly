import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';

class NewPetPage extends StatelessWidget {
  const NewPetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        leading: GestureDetector(
          onTap: navigator.pop,
          child: const Icon(Icons.close),
        ),
        title: Text(
          'New pet',
          style: PetlyTextTheme.h1.copyWith(
            fontSize: 16,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.save),
        label: Text(
          'Save',
          style: PetlyTextTheme.body1,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Align(
              child: Container(
                height: 128,
                width: 128,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                labelStyle: PetlyTextTheme.body1,
                icon: const Icon(Icons.pets),
                hintText: "Pet's name",
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelStyle: PetlyTextTheme.body1,
                icon: const Icon(Icons.line_weight),
                hintText: "Pet's Breed",
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 8,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.date_range),
                      hintText: "Pet's age",
                      helperText: 'In years',
                      labelStyle: PetlyTextTheme.body1,
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Pet's weight",
                      helperText: 'In Kilograms',
                      labelStyle: PetlyTextTheme.body1,
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                icon: const Icon(Icons.place),
                hintText: 'Location',
                labelStyle: PetlyTextTheme.body1,
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 8),
            child: Row(
              children: [
                Text(
                  'Vacinatted',
                  style: PetlyTextTheme.body1,
                ),
                Switch(
                  activeColor: Colors.redAccent,
                  value: true,
                  onChanged: (bool newValue) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
