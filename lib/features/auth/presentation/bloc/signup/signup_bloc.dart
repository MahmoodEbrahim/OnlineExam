import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupUserCase signupUseCase;

  SignupBloc(this.signupUseCase) : super(SignupInitial()) {
    on<SignupButtonPressed>((event, emit) async {
      emit(SignupLoading());

      try {
        final user = await signupUseCase(
          event.name,
          event.email,
          event.password,
          event.phone
        );

        emit(SignupSuccess());
      } catch (e) {
        emit(SignupFailure(e.toString()));
      }
    });
  }
}
