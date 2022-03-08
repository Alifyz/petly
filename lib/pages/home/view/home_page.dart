import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_project/pages/home/cubit/home_cubit.dart';
import 'package:pet_project/pages/home/widgets/header_widget.dart';
import 'package:pet_project/pages/home/widgets/pet_list_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomePageView(),
    );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().queryPets();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
              ),
            ),
          );
        }

        if (state is HomeSuccessful) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  HeaderWidget(state.user),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 8,
                        right: 8,
                      ),
                      child: ListView(
                        children: state.pets
                            .map((element) => PetListItem(element))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }

        return Container();
      },
    );
  }
}
