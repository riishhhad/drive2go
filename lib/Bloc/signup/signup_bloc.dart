import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/drive2go_api.dart';
import '../../Repository/Modelclass/SignupModel.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  late SignupModel signupModel;
  UserMainApi signupApi=UserMainApi();
  SignupBloc() : super(SignupInitial()) {
    on<Fetchsignupevent>((event, emit) async {
      emit (SignupBlocLoading());
      try{
        signupModel=await signupApi.getsignup(event.name, event.email, event.phone, event.password);
        emit(SignupBlocLoaded());
      }
      catch(e){
        emit (SignupBlocError());
      }
      // TODO: implement event handler
    });
  }
}
