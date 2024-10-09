import 'package:bloc/bloc.dart';
import 'package:drive2go/Repository/Modelclass/AllcarsModel.dart';
import 'package:meta/meta.dart';
import '../../Repository/API/drive2go_api.dart';
part 'allcars_event.dart';
part 'allcars_state.dart';

class AllcarsBloc extends Bloc<AllcarsEvent, AllcarsState> {
  late List<AllcarsModel> allcarsmodel;
  UserMainApi allcarapi=UserMainApi();
  AllcarsBloc() : super(AllcarsInitial()) {
    on<Fetchallcarsevent>((event, emit) async {
      emit(AllcarsBlocLoading());
      try {
        allcarsmodel = await allcarapi.getallcars();
        emit(AllcarsBlocLoaded());
      }
      catch (e) {
        print(e.toString());
        emit(AllcarsBlocError());
      }

    });
  }
}
