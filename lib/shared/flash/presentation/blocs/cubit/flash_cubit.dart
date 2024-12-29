import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'flash_state.dart';

@injectable
class FlashCubit extends Cubit<FlashState> {
  FlashCubit() : super(const FlashState.disappeared());

  Future<void> displayFlash(String message) async {
    emit(FlashState.appeared(message));
    emit(const FlashState.disappeared());
  }
}
