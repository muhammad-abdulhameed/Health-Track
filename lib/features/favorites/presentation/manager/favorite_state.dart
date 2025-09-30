abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteServiceExpand extends FavoriteState {
  bool isExpand;
  int index;

  FavoriteServiceExpand({required this.isExpand, required this.index});
}


