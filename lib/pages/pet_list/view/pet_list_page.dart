// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/pages/home/widgets/pet_list_item_widget.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';
import 'package:pet_project/pages/pet_list/cubit/pet_list_cubit.dart';

class PetListPage extends StatelessWidget {
  const PetListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final petType = ModalRoute.of(context)?.settings.arguments as String?;
    return BlocProvider(
      create: (_) => PetListCubit()..queryPets(petType),
      child: BlocBuilder<PetListCubit, PetListState>(
        builder: (context, state) {
          if (state is PetListLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.redAccent,
                ),
              ),
            );
          }

          if (state is PetListSuccess) {
            return PetListView(
              petType,
              state.pets,
            );
          }

          if (state is PetListInitial) {
            return PetListView(
              petType,
              null,
            );
          }

          return Container();
        },
      ),
    );
  }
}

class PetListView extends StatefulWidget {
  const PetListView(
    this.petType,
    this.pets, {
    Key? key,
  }) : super(key: key);

  final String? petType;
  final List<PetModel>? pets;

  @override
  State<PetListView> createState() => _PetListViewState();
}

class _PetListViewState extends State<PetListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets'),
      ),
      body: ListView(
        children: [
          if (widget.pets != null) ...[
            ...widget.pets!.map((element) => PetListItem(element)).toList()
          ],
        ],
      ),
    );
  }
}
