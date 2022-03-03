import 'package:flutter/material.dart';
import 'package:pet_project/common/theme/text_theme.dart';

class GlobalActionWidget extends StatelessWidget {
  const GlobalActionWidget({
    Key? key,
    required this.actionName,
    required this.actionImage,
  }) : super(key: key);

  final String actionName;
  final AssetImage actionImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              )
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: actionImage,
                height: 24,
                width: 24,
              ),
              Text(
                actionName,
                style: PetlyTextTheme.subtitle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
