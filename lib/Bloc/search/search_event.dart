part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}
class FetchsearchEvent extends SearchEvent{
  final String brandsearch;
  FetchsearchEvent({ required this.brandsearch});
}