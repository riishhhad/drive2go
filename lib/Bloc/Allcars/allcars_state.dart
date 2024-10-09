part of 'allcars_bloc.dart';

@immutable
sealed class AllcarsState {}

final class AllcarsInitial extends AllcarsState {}

class AllcarsBlocLoading extends AllcarsState{}
class AllcarsBlocLoaded extends AllcarsState{}
class AllcarsBlocError extends AllcarsState{}
