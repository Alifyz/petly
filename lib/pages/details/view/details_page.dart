import 'package:flutter/material.dart';
import 'package:pet_project/common/helpers.dart';

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
              children: const [
                Text('Pet Name'),
                Text('2 years old'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 4,
              bottom: 4,
            ),
            child: Text('Pet Breed'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 16,
            ),
            child: Row(
              children: const [
                Icon(Icons.place),
                Text('Brazil'),
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
                  color: Colors.red,
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
