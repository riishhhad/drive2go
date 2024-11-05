part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
class SearchBlocLoading extends SearchState{}
class SearchBlocLoaded extends SearchState{}
class SearchBlocError extends SearchState{}
