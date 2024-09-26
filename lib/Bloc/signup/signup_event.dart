part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}
class Fetchsignupevent extends SignupEvent{
  final String name;
  final String email;
  final String phone;
  final String password;
  Fetchsignupevent({
    required this.name, required this.email, required this.phone, required this.password,
});
}