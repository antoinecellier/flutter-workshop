import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '08_bloc/app.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  runApp(PunkApiApp());
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(cubit, error, stackTrace);
  }
}
