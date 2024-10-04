import 'package:bloc/bloc.dart';
import 'package:drive2go/Repository/Modelclass/SigninModel.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/drive2go_api.dart';
import '../Signup/signup_bloc.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  late SigninModel signinModel;
  UserMainApi signupApi=UserMainApi();
  SigninBloc() : super(SigninInitial()) {
    on<Fetchsigninevent>((event, emit) async {
      emit(SigninBlocLoading());
      try {
        signinModel = await signupApi.getsignin(event.email, event.password);
        emit(SigninBlocLoaded());
      }
      catch (e) {
        emit(SigninBlocError());
      }
      SigninBloc();
      {

          // TODO: implement event handler
        }});
      }
    }
