import 'package:flutter/material.dart';
import 'package:pet_project/common/helpers.dart';
import 'package:pet_project/common/theme/text_theme.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Details'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.phone),
        label: const Text('Adopt'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: mediaQuery.size.height * 0.5,
            color: Colors.red,
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                netwworkImageAddressExample,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 2,
              top: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pet Name',
                  style: PetlyTextTheme.h1.copyWith(
                    fontSize: 21,
                  ),
                ),
                Text(
                  '2 years old',
                  style: PetlyTextTheme.headline.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 4,
              bottom: 4,
            ),
            child: Text(
              'Pet Breed',
              style: PetlyTextTheme.subtitle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 16,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.place,
                  color: Colors.redAccent,
                ),
                Text(
                  'São Paulo, BR',
                  style: PetlyTextTheme.subtitle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
            ),
            child: Row(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        netwworkImageAddressExample,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Jhon Doe'),
                      Text('Owner'),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
            ),
            child: Text('Lore ipsum, lore, Lore ipsum, lor, Lore ipsum, lor'),
          )
        ],
      ),
    );
  }
}
