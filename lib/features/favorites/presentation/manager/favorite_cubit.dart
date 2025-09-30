import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_track/features/favorites/presentation/manager/favorite_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  static FavoriteCubit get(context) => BlocProvider.of(context);
  int? expandIndex ;

  void showFavoriteService(int index,) {
  if(expandIndex==index){
    expandIndex = null;
  }else{
    expandIndex = index;
  }

    emit(FavoriteServiceExpand(isExpand:expandIndex!=null,index: index));

  }
}
