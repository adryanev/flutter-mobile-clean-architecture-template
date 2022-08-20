import 'package:flutter_test/flutter_test.dart';
import 'package:template/shared/domain/formz/password_input.dart';

void main() {
  group('PasswordInput Pure', () {
    test(
      'should return status pure and invalid when initiated without value',
      () async {
        // act
        const form = PasswordInput.pure();
        // assert
        expect(form.isPure, isTrue);
      },
    );

    test(
      'should return status pure and valid when initiated with value',
      () async {
        // arrange
        const oldPassword = 'Asdf1234';
        // act
        const form = PasswordInput.pure(oldPassword);
        // assert
        expect(form.isPure, isTrue);
        expect(form.value, equals(oldPassword));
        expect(form.isValid, isTrue);
        expect(form.error, isNull);
        expect(form.isNotValid, isFalse);
      },
    );
  });

  group('PasswordInput Dirty', () {
    test(
      'should return status dirty and invalid when initiated without value',
      () async {
        // act
        const form = PasswordInput.dirty();
        // assert
        expect(form.isPure, isFalse);
        expect(form.isValid, isFalse);
        expect(form.displayError, equals(PasswordValidationError.invalid));
      },
    );

    test(
      'should return status dirty and valid when initiated with value',
      () async {
        // arrange
        const oldPassword = 'Asdf1234';
        // act
        const form = PasswordInput.dirty(oldPassword);
        // assert
        expect(form.isPure, isFalse);
        expect(form.value, equals(oldPassword));
        expect(form.isValid, isTrue);
        expect(form.error, isNull);
        expect(form.isNotValid, isFalse);
      },
    );
  });
}
