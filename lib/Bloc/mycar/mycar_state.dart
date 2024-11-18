part of 'mycar_bloc.dart';

@immutable
sealed class MycarState {}

final class MycarInitial extends MycarState {}
class MycarBlocLoading extends MycarState{}
class MycarBlocLoaded extends MycarState{}
class MycarBlocError extends MycarState{}
