import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pet_project/common/theme/text_theme.dart';
import 'package:pet_project/pages/new_pet/cubit/new_pet_cubit.dart';
import 'package:pet_project/pages/new_pet/model/new_pet_model.dart';
import 'package:pet_project/pages/pages_helper.dart';
import 'package:pet_project/repository/image_repository.dart';

class NewPetPage extends StatefulWidget {
  const NewPetPage({Key? key}) : super(key: key);

  @override
  State<NewPetPage> createState() => _NewPetPageState();
}

class _NewPetPageState extends State<NewPetPage> {
  final imageRepository = ImageRepository();
  File? petImage;
  bool vaccinated = false;
  final nameController = TextEditingController();
  final breedController = TextEditingController();
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final locationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return BlocProvider(
      create: (_) => NewPetCubit(),
      child: BlocConsumer<NewPetCubit, NewPetState>(
        listener: (context, state) {
          if (state is NewPetSuccess) {
            // ignore: todo
            // TODO(potniatheron): Push a new success page, and them go
            //to home page
            navigator.popAndPushNamed(PagesHelper.homePage);
          }
          if (state is NewPetFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Something went wrong, try again :/'),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is NewPetLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.redAccent,
                ),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.redAccent,
              elevation: 0,
              leading: GestureDetector(
                onTap: navigator.pop,
                child: const Icon(Icons.close),
              ),
              title: Text(
                'New pet',
                style: PetlyTextTheme.h1.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  final age = int.tryParse(ageController.text);
                  final weight = double.tryParse(weightController.text);
                  final model = NewPetModel(
                    nameController.text,
                    breedController.text,
                    age ?? 0,
                    weight ?? 0,
                    locationController.text,
                    petImage,
                    vaccinated,
                  );

                  await context.read<NewPetCubit>().addNewPet(model);
                }
              },
              icon: const Icon(Icons.save),
              label: Text(
                'Save new pet',
                style: PetlyTextTheme.body1,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: Form(
              key: _formKey,
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () async {
                      await Permission.photos.request();
                      final status = Permission.photos.status;
                      if (await status.isGranted) {
                        final tempFile = await imageRepository.getImage();
                        if (tempFile != null) {
                          setState(() {
                            petImage = tempFile;
                          });
                        }
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 8,
                        right: 8,
                        bottom: 4,
                      ),
                      child: Align(
                        child: Container(
                          height: 164,
                          width: 164,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withAlpha(150),
                            shape: BoxShape.circle,
                          ),
                          child: petImage == null
                              ? const Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                )
                              : CircleAvatar(
                                  foregroundImage: FileImage(petImage!),
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      controller: nameController,
                      validator: formValidator,
                      maxLength: 20,
                      decoration: InputDecoration(
                        labelStyle: PetlyTextTheme.body1,
                        icon: const Icon(Icons.pets),
                        hintText: "Pet's name",
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    child: TextFormField(
                      controller: breedController,
                      validator: formValidator,
                      decoration: InputDecoration(
                        labelStyle: PetlyTextTheme.body1,
                        icon: const Icon(Icons.line_weight),
                        hintText: "Pet's Breed",
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: ageController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.date_range),
                              hintText: "Pet's age",
                              helperText: 'In years',
                              labelStyle: PetlyTextTheme.body1,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.redAccent,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: weightController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Pet's weight",
                              helperText: 'In Kilograms',
                              labelStyle: PetlyTextTheme.body1,
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.redAccent,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      controller: locationController,
                      validator: formValidator,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.place),
                        hintText: 'Location',
                        labelStyle: PetlyTextTheme.body1,
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: Row(
                      children: [
                        Text(
                          'Vacinatted',
                          style: PetlyTextTheme.body1,
                        ),
                        Switch(
                          activeColor: Colors.redAccent,
                          value: vaccinated,
                          onChanged: (bool newValue) {
                            setState(() {
                              vaccinated = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String? formValidator(String? value) {
    if (value == null) {
      return 'You must enter a valid information';
    }
    if (value.isEmpty) {
      return 'You must type something';
    }
    if (value.length <= 3) {
      return 'The text is too short';
    }
    return null;
  }
}
