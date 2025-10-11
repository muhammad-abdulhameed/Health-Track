import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'help_center_state.dart';

@injectable
class HelpCenterCubit extends Cubit<HelpCenterState> {
  HelpCenterCubit() : super(HelpCenterInitial());

  static HelpCenterCubit get(context) => BlocProvider.of(context);
  int? expandIndex ;

  void showHelpCenterService(int index,) {
    if(expandIndex==index){
      expandIndex = null;
    }else{
      expandIndex = index;
    }

    emit(HelpCenterServiceExpand(isExpand:expandIndex!=null,index: index));

  }
}