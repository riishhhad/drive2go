import 'package:bloc/bloc.dart';
import 'package:drive2go/Repository/Modelclass/SigninModel.dart';
import 'package:meta/meta.dart';

import '../Signup/signup_bloc.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  late SigninModel signinModel;
  SigninBloc() : super(SigninInitial()) {
    on<SigninEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
