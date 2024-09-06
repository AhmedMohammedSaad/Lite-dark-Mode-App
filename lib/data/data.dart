import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/model.dart';

class Data_Cubet extends Cubit<Model_Lite_mode> {
  Data_Cubet() : super(Lite(Light: "طفي النور"));

  bool mode_Change = false;
  void change_Method_Mode() {
    mode_Change = !mode_Change;
    if (mode_Change == false) {
      emit(Lite(Light: "طفي النور"));
    } else {
      emit(Dark(dark: "شغل النور"));
    }
  }
}
