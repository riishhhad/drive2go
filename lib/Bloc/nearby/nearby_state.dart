part of 'nearby_bloc.dart';

@immutable
sealed class NearbyState {}

final class NearbyInitial extends NearbyState {}
class NearbyBlocLoading extends NearbyState{}
class NearbyBlocLoaded extends NearbyState{}
class NearbyBlocError extends NearbyState{}
