abstract class HelpCenterState {}
class HelpCenterInitial extends HelpCenterState {}

class HelpCenterServiceExpand extends HelpCenterState {
  bool isExpand;
  int index;

  HelpCenterServiceExpand({required this.isExpand, required this.index});
}


