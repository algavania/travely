import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../repositories/repositories.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;

  RegisterCubit(this._authRepository) : super(RegisterState.initial());

  void fieldChanged(String email, String password, String name) {
    emit(state.copyWith(
        email: email,
        name: name,
        password: password,
        status: RegisterStatus.initial));
  }

  Future<void> register(BuildContext context) async {
    if (state.status == RegisterStatus.submitting) return;
    emit(state.copyWith(status: RegisterStatus.submitting));

    try {
      await _authRepository.register(
          email: state.email,
          password: state.password,
          name: state.name,
          context: context);
      emit(state.copyWith(status: RegisterStatus.success));
    } catch (e) {
      throw e.toString();
    }
  }

  void changeStatusToInitial() {
    emit(state.copyWith(status: RegisterStatus.initial));
  }
}
