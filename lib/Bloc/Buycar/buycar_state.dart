part of 'buycar_bloc.dart';

@immutable
sealed class BuycarState {}

final class BuycarInitial extends BuycarState {}
class BuycarBlocLoading extends BuycarState{}
class BuycarBlocLoaded extends BuycarState{}
class BuycarBlocError extends BuycarState{}
