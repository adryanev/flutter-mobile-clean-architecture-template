import 'package:flutter_test/flutter_test.dart';
import 'package:template/shared/domain/formz/password_confirmation_input.dart';

void main() {
  group('PasswordConfirmationInput Pure', () {
    test(
      'should return status pure and invalid when initiated without value',
      () async {
        // act
        const form = PasswordConfirmationInput.pure();
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
        const form = PasswordConfirmationInput.pure(oldPassword);
        // assert
        expect(form.isPure, isTrue);
        expect(form.value, equals(oldPassword));
        expect(form.isValid, isFalse);
        expect(
          form.error,
          equals(PasswordConfirmationValidationError.mismatch),
        );
        expect(form.isNotValid, isTrue);
      },
    );
  });

  group('PasswordConfirmationInput Dirty', () {
    test(
      'should return status dirty and invalid when initiated without value',
      () async {
        //arrange
        const oldPassword = 'Asdf1234';
        // act
        const form = PasswordConfirmationInput.dirty(oldPassword);
        // assert
        expect(form.isPure, isFalse);
        expect(form.isValid, isFalse);
        expect(
          form.displayError,
          equals(
            PasswordConfirmationValidationError.mismatch,
          ),
        );
      },
    );

    test(
      'should return status dirty and not valid when mismatch',
      () async {
        // arrange
        const oldPassword = 'Asdf1234';
        const newPassword = 'Asdf1345';
        // act
        const form = PasswordConfirmationInput.dirty(oldPassword, newPassword);
        // assert
        expect(form.isPure, isFalse);
        expect(form.value, equals(newPassword));
        expect(form.isValid, isFalse);
        expect(
          form.error,
          equals(PasswordConfirmationValidationError.mismatch),
        );
        expect(form.isNotValid, isTrue);
      },
    );
    test(
      'should return status dirty and valid when initiated with value',
      () async {
        // arrange
        const oldPassword = 'Asdf1234';
        const newPassword = 'Asdf1234';
        // act
        const form = PasswordConfirmationInput.dirty(oldPassword, newPassword);
        // assert
        expect(form.isPure, isFalse);
        expect(form.value, equals(newPassword));
        expect(form.isValid, isTrue);
        expect(form.error, isNull);
        expect(form.isNotValid, isFalse);
      },
    );
  });
}
