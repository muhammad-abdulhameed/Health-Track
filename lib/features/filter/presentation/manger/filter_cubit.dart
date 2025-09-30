import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_track/features/filter/presentation/manger/filter_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/featch_filters_use_case.dart';

@LazySingleton()
class FilterCubit extends Cubit<FilterState> {

  FilterCubit(this._fetchFiltersUseCase) : super(FilterInitial());
  final FetchFiltersUseCase _fetchFiltersUseCase;
  static FilterCubit get(context) => BlocProvider.of(context);
  int? expandIndex ;

  void fetchFilters({int? index}) async {
    if(expandIndex==index){
      expandIndex = null;
    }else{
      expandIndex = index;
    }
    final result =  _fetchFiltersUseCase.call();
    emit(FilterFetchSuccess(result,isExpand:expandIndex!=null,index: index));
  }
}