// Import the necessary packages
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:template/core/extensions/dartz_extensions.dart';

void main() {
  // Test the getRight method
  test('getRight should return the right value of an Either', () {
    // Arrange: create some Either values
    const either1 = Right<String, int>(42);
    const either2 = Left<String, int>('error');

    // Act: call the getRight method on the Either values
    final result1 = either1.getRight();
    final result2 = either2.getRight();

    // Assert: expect the results to match the right values or null
    expect(result1, 42);
    expect(result2, null);
  });

  // Test the getLeft method
  test('getLeft should return the left value of an Either', () {
    // Arrange: create some Either values
    const either1 = Right<String, int>(42);
    const either2 = Left<String, int>('error');

    // Act: call the getLeft method on the Either values
    final result1 = either1.getLeft();
    final result2 = either2.getLeft();

    // Assert: expect the results to match the left values or null
    expect(result1, null);
    expect(result2, 'error');
  });

  // Test the unwrapRight method
  test('unwrapRight should return the right value of an Either or null', () {
    // Arrange: create some Either values
    const either1 = Right<String, int>(42);
    const either2 = Left<String, int>('error');

    // Act: call the unwrapRight method on the Either values
    final result1 = either1.unwrapRight();
    final result2 = either2.unwrapRight();

    // Assert: expect the results to match the right values or null
    expect(result1, 42);
    expect(result2, null);
  });
}
