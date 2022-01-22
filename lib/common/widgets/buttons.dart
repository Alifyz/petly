import 'package:flutter/material.dart';

class PetlyButton extends StatelessWidget {
  const PetlyButton({
    Key? key,
    this.title,
    this.primary = false,
    this.isLoading = false,
    this.onPressed,
    this.icon,
  }) : super(key: key);

  final String? title;
  final bool primary;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 4,
        bottom: 4,
      ),
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: 48,
        child: icon == null
            ? PetlyElevatedButton(
                primary: primary,
                onPressed: onPressed,
                title: title,
                isLoading: isLoading,
              )
            : PetlyElevatedButtonIcon(
                primary: primary,
                onPressed: onPressed,
                title: title,
                icon: icon ?? const Icon(Icons.pets),
              ),
      ),
    );
  }
}

class PetlyElevatedButton extends StatelessWidget {
  const PetlyElevatedButton({
    Key? key,
    required this.primary,
    required this.onPressed,
    required this.title,
    this.isLoading = false,
  }) : super(key: key);

  final bool primary;
  final VoidCallback? onPressed;
  final String? title;
  final bool isLoading;

  Widget get defaultText => Text(
        title!,
        style: TextStyle(
          color: primary ? Colors.white : Colors.black,
        ),
      );

  Widget get loadingWidget => const Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
          primary ? Colors.white24 : Colors.black12,
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          primary ? Colors.red : Colors.white,
        ),
      ),
      onPressed: onPressed,
      child: isLoading ? loadingWidget : defaultText,
    );
  }
}

class PetlyElevatedButtonIcon extends StatelessWidget {
  const PetlyElevatedButtonIcon({
    Key? key,
    required this.primary,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.isLoading = false,
  }) : super(key: key);

  final bool primary;
  final VoidCallback? onPressed;
  final String? title;
  final bool isLoading;
  final Widget icon;

  Widget get defaultText => Text(
        title!,
        style: TextStyle(
          color: primary ? Colors.white : Colors.black,
        ),
      );

  Widget get loadingWidget => const Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
          primary ? Colors.white24 : Colors.black12,
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          primary ? Colors.red : Colors.white,
        ),
      ),
      onPressed: onPressed,
      label: isLoading ? loadingWidget : defaultText,
    );
  }
}
