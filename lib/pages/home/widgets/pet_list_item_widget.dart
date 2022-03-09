import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';
import 'package:pet_project/pages/pages_helper.dart';

class PetListItem extends StatelessWidget {
  const PetListItem(
    this.model, {
    Key? key,
  }) : super(key: key);

  final PetModel model;

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return GestureDetector(
      onTap: () => navigator.pushNamed(
        PagesHelper.detailsPage,
        arguments: model,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    width: 128,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(model.petUri),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.petName,
                        style: PetlyTextTheme.subtitle
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        model.petBreed,
                        style: PetlyTextTheme.subtitle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.info_rounded,
                    color: Colors.pink,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
