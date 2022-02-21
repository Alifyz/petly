import 'package:flutter/material.dart';
import 'package:pet_project/common/helpers.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/pages/home/widgets/global_action_widget.dart';
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

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(24),
            ),
          ),
          height: mediaQuery.size.height * 0.35,
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
    );
  }
}
