import 'package:flutter_test/flutter_test.dart';
import 'package:template/shared/domain/formz/email_input.dart';

void main() {
  group('EmailInput Pure', () {
    test(
      'should return status pure and invalid when initiated without value',
      () async {
        // act
        const form = EmailInput.pure();
        // assert
        expect(form.isPure, isTrue);
      },
    );

    test(
      'should return status pure and valid when initiated with value',
      () async {
        // arrange
        const oldEmail = 'test@example.com';
        // act
        const form = EmailInput.pure(oldEmail);
        // assert
        expect(form.isPure, isTrue);
        expect(form.value, equals(oldEmail));
        expect(form.isValid, isTrue);
        expect(form.error, isNull);
        expect(form.isNotValid, isFalse);
      },
    );
  });

  group('EmailInput Dirty', () {
    test(
      'should return status dirty and invalid when initiated without value',
      () async {
        // act
        const form = EmailInput.dirty();
        // assert
        expect(form.isPure, isFalse);
        expect(form.isValid, isFalse);
        expect(form.displayError, equals(EmailValidationError.invalid));
      },
    );

    test(
      'should return status dirty and valid when initiated with value',
      () async {
        // arrange
        const oldEmail = 'test@example.com';
        // act
        const form = EmailInput.dirty(oldEmail);
        // assert
        expect(form.isPure, isFalse);
        expect(form.value, equals(oldEmail));
        expect(form.isValid, isTrue);
        expect(form.error, isNull);
        expect(form.isNotValid, isFalse);
      },
    );
  });
}
