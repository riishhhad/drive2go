import 'package:bloc/bloc.dart';
import 'package:drive2go/Repository/Modelclass/BuycarModel.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/drive2go_api.dart';

part 'buycar_event.dart';
part 'buycar_state.dart';

class BuycarBloc extends Bloc<BuycarEvent, BuycarState> {
  late List<BuycarModel> buycarmodel;
  UserMainApi buycarapi=UserMainApi();
  BuycarBloc() : super(BuycarInitial()) {
    on<Fetchbuycarevent>((event, emit) async {
      emit(BuycarBlocLoading());
      try {
        buycarmodel = await buycarapi.getbuycar();
        emit(BuycarBlocLoaded());
      }
      catch (e) {
        print(e.toString());
        emit(BuycarBlocError());
      }
    });
  }
}
