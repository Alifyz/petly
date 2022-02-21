import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';

class PetListItem extends StatelessWidget {
  const PetListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: 72,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 48,
                height: 48,
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
    );
  }
}
