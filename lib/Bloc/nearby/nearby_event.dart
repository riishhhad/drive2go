part of 'nearby_bloc.dart';

@immutable
sealed class NearbyEvent {}
class Fetchnearbyevent extends NearbyEvent{
  final String lat;
  final String long;
  Fetchnearbyevent({
    required this.lat,required this.long,
  });
}
