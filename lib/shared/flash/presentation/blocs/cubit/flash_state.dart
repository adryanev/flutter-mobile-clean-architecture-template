part of 'flash_cubit.dart';

sealed class FlashState {
  const FlashState();
  const factory FlashState.disappeared() = FlashDisappeared;
  const factory FlashState.appeared(String message) = FlashAppeared;
}

class FlashDisappeared extends FlashState {
  const FlashDisappeared();
}

class FlashAppeared extends FlashState {
  const FlashAppeared(this.message);
  final String message;
}
