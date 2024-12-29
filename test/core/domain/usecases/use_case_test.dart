import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/domain/failures/failure.dart';
import 'package:template/core/domain/usecases/use_case.dart';

class TestUseCase implements UseCase<String, NoParams> {
  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return right('Success');
  }
}

// Define a sample stream use case class that implements StreamUseCase
class TestStreamUseCase implements StreamUseCase<String, NoParams> {
  @override
  Stream<Either<Failure, String>> call(NoParams params) {
    return Stream.value(right('Success'));
  }
}

void main() {
  // Define a group of tests for the UseCase and StreamUseCase classes
  group('UseCase and StreamUseCase', () {
    // Define a sample use case class that implements UseCase

    // Define a test case for the UseCase interface
    test('should implement UseCase interface', () {
      // Create a sample TestUseCase object
      final useCase = TestUseCase();

      // Assert that it implements UseCase interface
      expect(useCase, isA<UseCase<String, NoParams>>());
    });

    // Define a test case for the StreamUseCase interface
    test('should implement StreamUseCase interface', () {
      // Create a sample TestStreamUseCase object
      final streamUseCase = TestStreamUseCase();

      // Assert that it implements StreamUseCase interface
      expect(streamUseCase, isA<StreamUseCase<String, NoParams>>());
    });
  });
}
