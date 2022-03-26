import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_project/pages/details/cubit/details_cubit.dart';
import 'package:pet_project/pages/home/cubit/home_cubit.dart';

class DetailsCubitMock extends MockCubit<DetailsState> implements DetailsCubit {
}

void main() {
  group('Testing HomeCubit', () {
    final list = <int>[];
    blocTest<DetailsCubitMock, DetailsState>(
      '[Emits correct State when not using mocks/stubs]',
      build: () => DetailsCubitMock(),
      act: (DetailsCubitMock bloc) =>
          bloc.openEmail('test@test.com', 'PetTest', 'Message'),
      expect: () => list,
    );
  });
}
