import 'package:bloc/bloc.dart';
import 'package:drive2go/Repository/Modelclass/searchModel.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/drive2go_api.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  late List<SearchModel> searchmodel;
  UserMainApi searchapi=UserMainApi();
  SearchBloc() : super(SearchInitial()) {
    on<FetchsearchEvent>((event, emit) async{
      emit(SearchBlocLoading());
      try {
        searchmodel = await searchapi.getsearch(event.brandsearch);
        emit(SearchBlocLoaded());
      }
      catch (e) {
        print(e.toString());
        emit(SearchBlocError());
      }
    });
  }
}
