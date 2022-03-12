// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/pages/pet_list/cubit/pet_list_cubit.dart';

class PetListPage extends StatelessWidget {
  const PetListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final petType = ModalRoute.of(context)?.settings.arguments as String?;
    return BlocProvider(
      create: (_) => PetListCubit(),
      child: PetListView(petType),
    );
  }
}

class PetListView extends StatefulWidget {
  const PetListView(
    this.petType, {
    Key? key,
  }) : super(key: key);

  final String? petType;

  @override
  State<PetListView> createState() => _PetListViewState();
}

class _PetListViewState extends State<PetListView> {
  @override
  void initState() {
    context.read<PetListCubit>().queryPets(widget.petType);
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
          Container(),
        ],
      ),
    );
  }
}
