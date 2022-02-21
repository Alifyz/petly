import 'package:flutter/material.dart';
import 'package:pet_project/common/helpers.dart';
import 'package:pet_project/common/theme/text_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(24),
                    ),
                  ),
                  height: mediaQuery.size.height * 0.40,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 16,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              foregroundImage:
                                  NetworkImage(netwworkImageAddressExample),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Hello, Alifyz Pires',
                              style: PetlyTextTheme.subtitle.copyWith(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 36,
                            left: 8,
                            right: 8,
                          ),
                          child: SizedBox(
                            height: 72,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                GlobalActionWidget(),
                                GlobalActionWidget(),
                                GlobalActionWidget(),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 48,
              height: 48,
              color: Colors.red,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dog'),
                  Text('Nice doggo'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(Icons.favorite),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class GlobalActionWidget extends StatelessWidget {
  const GlobalActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 64,
        height: 64,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.pets),
            Text('Dog'),
          ],
        ),
      ),
    );
  }
}
