import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/domain/failures/value_failure.codegen.dart';
import 'package:template/core/extensions/dartz_extensions.dart';
import 'package:template/shared/domain/entities/value_objects.dart';

void main() {
  group('StringSingleLine', () {
    test(
      'should contains ValueFailure when inputted with multi line string',
      () async {
        // arrange
        const input = 'this is \n multi line text';
        // act
        final singleLine = StringSingleLine(input);
        final output = singleLine.value.getRight();
        final failure = singleLine.value.getLeft();

        // assert
        expect(singleLine.isValid(), isFalse);
        expect(output, isNull);
        expect(failure, isA<ValueFailureMultiLine<String>>());
      },
    );

    test(
      'should contains String when valid ',
      () async {
        // arrange
        const input = 'this is single line';
        // act
        final singleLine = StringSingleLine(input);
        final output = singleLine.value.getRight();
        final failure = singleLine.value.getLeft();
        // assert
        expect(singleLine.isValid(), isTrue);
        expect(output, isA<String>());
        expect(output, equals(input));
        expect(failure, isNull);
      },
    );
  });
  group('UniqueId', () {
    test(
      'should contains ValueInvalidUniqueId when accepting invalid UUID',
      () async {
        // arrange
        const input = 'not a valid uuid';
        // act
        final uniqueId = UniqueId(input);
        final output = uniqueId.value.getRight();
        final failure = uniqueId.value.getLeft();
        // assert
        expect(uniqueId, isA<UniqueId>());
        expect(uniqueId.isValid(), isFalse);
        expect(output, isNull);
        expect(failure, isA<ValueInvalidUniqueId<String>>());
      },
    );

    test(
      'should contains Valid UUID when accepting valid UUID',
      () async {
        // arrange
        const input = 'f398a930-77b3-4395-be13-4bc5b53cb2f9';
        // act
        final uniqueId = UniqueId(input);
        final output = uniqueId.value.getRight();
        final failure = uniqueId.value.getLeft();

        // assert
        expect(uniqueId, isA<UniqueId>());
        expect(uniqueId.isValid(), isTrue);
        expect(failure, isNull);
        expect(output, isA<String>());
        expect(output, equals(input));
      },
    );

    test(
      'should generate valid UUID',
      () async {
        // arrange

        // act
        final uniqueId = UniqueId.generate();
        final output = uniqueId.value.getRight();
        final failure = uniqueId.value.getLeft();

        // assert
        expect(uniqueId, isA<UniqueId>());
        expect(uniqueId.isValid(), isTrue);
        expect(failure, isNull);
        expect(output, isA<String>());
      },
    );
  });
}
