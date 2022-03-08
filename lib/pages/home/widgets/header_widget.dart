import 'package:flutter/material.dart';
import 'package:pet_project/common/helpers.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/pages/home/widgets/global_action_widget.dart';
import 'package:pet_project/pages/pages_helper.dart';

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
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent,
                Colors.pink,
                Colors.redAccent,
              ],
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(24),
            ),
          ),
          height: mediaQuery.size.height * 0.35,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: UserHeadline(),
              ),
              PetActionRow()
            ],
          ),
        )
      ],
    );
  }
}

class UserHeadline extends StatelessWidget {
  const UserHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage: NetworkImage(netwworkImageAddressExample),
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
          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => navigator.pushNamed(PagesHelper.newPetPage),
                child: Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Container(
                    width: 74,
                    height: 74,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.pets,
                          color: Colors.white,
                        ),
                        Text(
                          'New Pet',
                          style: PetlyTextTheme.body1.copyWith(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PetActionRow extends StatelessWidget {
  const PetActionRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
              GlobalActionWidget(
                actionImage: AssetImage('assets/images/dog.png'),
                actionName: 'Dogs',
              ),
              GlobalActionWidget(
                actionImage: AssetImage('assets/images/cat.png'),
                actionName: 'Cats',
              ),
              GlobalActionWidget(
                actionImage: AssetImage('assets/images/bird.png'),
                actionName: 'Birds',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
