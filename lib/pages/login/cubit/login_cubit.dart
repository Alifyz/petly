import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pet_project/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final _repository = AuthRepository();

  Future<void> loginWithGoogle() async {
    try {
      final user = await _repository.signInWithGoogle();
    } on Exception {
      emit(LoginFailed());
    }
  }
}
