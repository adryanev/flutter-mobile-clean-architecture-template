import 'package:flutter/material.dart';
import 'package:template/core/utils/constants.dart';

extension BuildContextX on BuildContext {
  // void displayFlash(String message) {
  //   read<FlashCubit>().displayFlash(message);
  // }

  void showSnackbar({
    required String message,
    void Function()? action,
    String? actionText,
  }) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        // action: action == null && actionText != null
        //     ? null
        //     : SnackBarAction(label: actionText!, onPressed: action!),
      ),
    );
  }

  ThemeData get theme => Theme.of(this);
}
