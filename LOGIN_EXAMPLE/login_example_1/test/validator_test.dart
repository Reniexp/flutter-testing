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

    test('validate for empty password', () {
      // Arrange & Act
      var result = Validator.validatePassword('');
      // Assert
      expect(result, 'Require field');
    });
    
    test('validate for invalid password', () {
      // Arrange & Act
      var result = Validator.validatePassword('pass');
      // Assert
      expect(result, 'Please enter atleast 8 charater for password');
    });

    test('validate for valid password', () {
      // Arrange & Act
      var result = Validator.validatePassword('password');
      // Assert
      expect(result, null);
    });
}