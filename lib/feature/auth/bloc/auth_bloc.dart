import 'package:bloc/bloc.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemote _authRemote;
  AuthBloc(this._authRemote) : super(AuthInitial()) {
    on<LoginAuthEvent>((event, emit) async {
      emit(LoginLoading());
      final response = await _authRemote.login(event.requestModel);
      response.fold(
        (failed) => emit(LoginFailed(message: failed)),
        (success) {
          return emit(LoginSuccess(responseModel: success));
        },
      );
    });

    on<RegisterAuthEvent>((event, emit) async {
      emit(RegisterLoading());
      final response = await _authRemote.register(event.requestModel);
      response.fold(
        (failed) => emit(RegisterFailed(message: failed)),
        (success) {
          return emit(RegisterSuccess(responseModel: success));
        },
      );
    });
  }
}