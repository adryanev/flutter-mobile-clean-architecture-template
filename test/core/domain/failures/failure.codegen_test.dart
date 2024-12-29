// Import the test and freezed_test packages
import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/domain/failures/failure.dart';

void main() {
  // Define a group of tests for the Failure class
  group('Failure', () {
    // Define a test case for the localFailure constructor and message property
    test('localFailure should have a message property', () {
      // Create a sample localFailure object
      const failure = Failure.localFailure(message: 'Local failure');

      // Assert that the failure is a localFailure with the given message
      expect(
        failure,
        equals(
          const Failure.localFailure(message: 'Local failure'),
        ),
      );
      expect((failure as LocalFailure).message, 'Local failure');
    });

    // Define a test case for the serverFailure constructor and message property
    test('serverFailure should have a message property', () {
      // Create a sample serverFailure object
      const failure = Failure.serverFailure(message: 'Server failure');

      // Assert that the failure is a serverFailure with the given message
      expect(
        failure,
        equals(
          const Failure.serverFailure(message: 'Server failure'),
        ),
      );
      expect((failure as ServerFailure).message, 'Server failure');
    });
  });
}
