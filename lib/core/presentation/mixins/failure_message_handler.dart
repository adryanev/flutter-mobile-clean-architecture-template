import 'package:flutter/material.dart';
import 'package:template/core/domain/failures/failure.codegen.dart';
import 'package:template/core/extensions/context_extensions.dart';
// import 'package:template/l10n/l10n.dart';

mixin FailureMessageHandler {
  void handleFailure(BuildContext context, Failure failure) {
    // final l10n = context.l10n;
    failure.when(
      localFailure: (message) => context.displayFlash(message),
      serverFailure: (message) => context.displayFlash(message),
    );
  }
}
