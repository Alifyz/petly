import 'package:flutter/material.dart';
import 'package:pet_project/pages/home/widgets/header_widget.dart';
import 'package:pet_project/pages/home/widgets/pet_list_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 8,
                  right: 8,
                ),
                child: ListView(
                  children: const [
                    PetListItem(),
                    PetListItem(),
                    PetListItem(),
                    PetListItem(),
                    PetListItem(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
