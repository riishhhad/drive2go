import 'package:bloc/bloc.dart';
import 'package:drive2go/Repository/Modelclass/nearbyModel.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/drive2go_api.dart';

part 'nearby_event.dart';
part 'nearby_state.dart';

class NearbyBloc extends Bloc<NearbyEvent, NearbyState> {
  late List<NearbyModelClass> nearbymodel;
  UserMainApi nearbyapi=UserMainApi();
  NearbyBloc() : super(NearbyInitial()) {
    on<Fetchnearbyevent>((event, emit) async {
      emit(NearbyBlocLoading());
      try {
        nearbymodel = await nearbyapi.getnearby(event.lat, event.long);
        emit(NearbyBlocLoaded());
      }
      catch (e) {
        print(e.toString());
        emit(NearbyBlocError());
      }

     });
  }
}
