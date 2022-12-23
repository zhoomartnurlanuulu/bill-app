import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'split_event.dart';
part 'split_state.dart';

class SplitBloc extends Bloc<SplitEvent, SplitState> {
  SplitBloc() : super(SplitInitial()) {
    on<SplitEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
