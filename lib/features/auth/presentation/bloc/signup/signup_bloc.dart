import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../../domain/usecases.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupUseCase signupUseCase;

  SignupBloc(this.signupUseCase) : super(SignupInitial()) {
    on<SignupButtonPressed>((event, emit) async {
      emit(SignupLoading());

      try {
        final user = await signupUseCase(
          username: event.username,
          firstName: event.firstName,
          lastName: event.lastName,
          email: event.email,
          password: event.password,
          rePassword: event.rePassword,
          phone: event.phone,
        );
        final box = Hive.box('authBox');
        await box.put('token', user.token);
        emit(SignupSuccess());
      } catch (e) {
        if (e is DioError) {
          final errorMessage = e.response?.data['message'] ??
              e.response?.data['error'] ??
              e.message;
          emit(SignupFailure(errorMessage));
        } else {
          emit(SignupFailure(e.toString()));
        }
      }

    });
  }
}
