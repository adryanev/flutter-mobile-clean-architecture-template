part of 'flash_cubit.dart';

@freezed
class FlashState with _$FlashState {
  const factory FlashState.disappeared() = FlashDisappeared;
  const factory FlashState.appeared(String message) = FlashAppeared;
}
