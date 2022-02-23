import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/pages/pages_helper.dart';

class PetListItem extends StatelessWidget {
  const PetListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return GestureDetector(
      onTap: () => navigator.pushNamed(
        PagesHelper.detailsPage,
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
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dog',
                        style: PetlyTextTheme.subtitle
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Shiba Inu',
                        style: PetlyTextTheme.subtitle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.favorite,
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
