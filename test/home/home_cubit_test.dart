import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_project/pages/home/cubit/home_cubit.dart';

void main() {
  group('Testing HomeCubit', () {
    blocTest<HomeCubit, HomeState>(
      '[Emits correct State when not using mocks/stubs]',
      build: () => HomeCubit(),
      act: (HomeCubit bloc) => bloc.queryPets(),
      expect: () => [isA<HomeLoading>(), isA<HomeFailure>()],
    );
  });
}
