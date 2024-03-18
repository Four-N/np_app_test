import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, bool> {
  MenuBloc() : super(false);

  Stream<bool> mapEventToState(MenuEvent event) async* {
    if (event is ExpandEvent) {
      yield !state;
    }
  }
}
