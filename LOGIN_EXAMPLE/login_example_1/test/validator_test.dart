import 'package:flutter_test/flutter_test.dart';
import 'package:login_example_1/validator.dart';

void main() {
  test('validate for empty email id', () {

    // Arrange & Act
    var result = Validator.validateEmail('');

    // Assert
    expect(result, "Require field");

  });


  test('validate for invalid email id', () {

    // Arrange & Act
    var result = Validator.validateEmail('gdsfdhasd');

    // Assert
    expect(result, "Please enter a valid email id");

  });

  test('validate for valid email id', () {

      // Arrange & Act
      var result = Validator.validateEmail('abc@gmail.com');

      // Assert
      expect(result, null);

    });
  
}