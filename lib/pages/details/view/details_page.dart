// ignore_for_file: omit_local_variable_types, cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/common/helpers.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/pages/details/cubit/details_cubit.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final PetModel model =
        ModalRoute.of(context)!.settings.arguments as PetModel;

    return BlocProvider(
      create: (context) => DetailsCubit(),
      child: Builder(builder: (context) {
        return DetailsPageView(mediaQuery: mediaQuery, model: model);
      }),
    );
  }
}

class DetailsPageView extends StatelessWidget {
  const DetailsPageView({
    Key? key,
    required this.mediaQuery,
    required this.model,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final PetModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Details'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<DetailsCubit>().openEmail(
                model.tutorEmail,
                model.petName,
                model.tutorName,
              );
        },
        icon: const Icon(Icons.phone),
        label: const Text('Adopt'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: mediaQuery.size.height * 0.5,
            color: Colors.red,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                model.petUri,
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
                  model.petName,
                  style: PetlyTextTheme.h1.copyWith(
                    fontSize: 21,
                  ),
                ),
                Text(
                  '${model.petAge} years old',
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
              model.petBreed,
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
                  model.petLocation,
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
                        model.tutorUri ?? netwworkImageAddressExample,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.tutorName ?? '',
                        style: PetlyTextTheme.h1.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Owner',
                        style: PetlyTextTheme.subtitle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
