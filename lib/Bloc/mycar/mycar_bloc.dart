import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/drive2go_api.dart';
import '../../Repository/Modelclass/mycarModel.dart';

part 'mycar_event.dart';
part 'mycar_state.dart';

class MycarBloc extends Bloc<MycarEvent, MycarState> {
  late List<MycarModel> mycar;
  UserMainApi Mycarapi=UserMainApi();
  MycarBloc() : super(MycarInitial()) {
    on<Fetchmycarevent>((event, emit) async{
      emit(MycarBlocLoading());
      try {
        mycar = await Mycarapi.getmycar();
        emit(MycarBlocLoaded());
      }
      catch (e) {
        print(e.toString());
        emit(MycarBlocError());
      }
    });
  }
}
