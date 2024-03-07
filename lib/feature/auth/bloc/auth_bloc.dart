import 'package:bloc/bloc.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/auth/data/model/request/login_request_model.dart';
import 'package:dastory/feature/auth/data/model/request/register_request_model.dart';
import 'package:dastory/feature/auth/data/model/response/login_response_model.dart';
import 'package:dastory/feature/auth/data/model/response/register_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemote _authRemote;
  AuthBloc(this._authRemote) : super(const AuthState.initial()) {
    on<_Login>(
      (event, emit) async {
        emit(const AuthState.loginLoading());
        final response = await _authRemote.login(event.requestModel);
        response.fold(
          (failed) => emit(AuthState.loginFailed(failed)),
          (success) {
            return emit(AuthState.loginSuccess(success));
          },
        );
      },
    );

    on<_Register>(
      (event, emit) async {
        emit(const AuthState.registerLoading());
        final response = await _authRemote.register(event.requestModel);
        response.fold(
          (failed) => emit(AuthState.registerFailed(failed)),
          (success) {
            return emit(AuthState.registerSuccess(success));
          },
        );
      },
    );
  }
}
