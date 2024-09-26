part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}
class SignupBlocLoading extends SignupState{}
class SignupBlocLoaded extends SignupState{}
class SignupBlocError extends SignupState{}