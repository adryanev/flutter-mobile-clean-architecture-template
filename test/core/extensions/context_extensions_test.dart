// Import the necessary packages
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:template/core/extensions/context_extensions.dart';
import 'package:template/shared/flash/presentation/blocs/cubit/flash_cubit.dart';

// Import the file that contains the extension

// Create a mock class for the FlashCubit
class MockFlashCubit extends MockCubit<FlashState> implements FlashCubit {}

void main() {
  // Initialize the mock cubit and the scaffold messenger key
  late MockFlashCubit mockFlashCubit;

  setUp(() {
    // Create an instance of the mock cubit
    mockFlashCubit = MockFlashCubit();
    // Register the fallback values for the mocktail library
    registerFallbackValue(const FlashState.disappeared());
    when(() => mockFlashCubit.displayFlash('Hello'))
        .thenAnswer((invocation) async {});
  });

  // Test the displayFlash method
  testWidgets('displayFlash should call displayFlash on the cubit',
      (tester) async {
    // Arrange: create a test widget that uses the extension method
    final testWidget = MaterialApp(
      home: BlocProvider<FlashCubit>(
        create: (context) => mockFlashCubit,
        child: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () {
                context.displayFlash('Hello');
              },
              child: const Text('Press me'),
            );
          },
        ),
      ),
    );

    // Act: pump the test widget and tap on the button
    await tester.pumpWidget(testWidget);
    await tester.tap(find.byType(TextButton));

    // Assert: verify that the displayFlash method was
    //called on the cubit with the correct message
    verify(() => mockFlashCubit.displayFlash('Hello')).called(1);
  });
}
