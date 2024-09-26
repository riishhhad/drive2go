part of 'signin_bloc.dart';

@immutable
sealed class SigninEvent {}
class Fetchsigninevent extends SigninEvent{
  final String email;
  final String password;
  Fetchsigninevent({
    required this.email,required this.password,
  });
}
