import 'package:flutter_application_1/maths_util.dart';
import 'package:test/test.dart';


void main() {
  group('Maths Util -', () {
    test('check for two number addition', (){
      // Arrange
      var a = 10;
      var b = 10;

      // Act
      var sum = add(a, b);

      //Assert
      expect(sum, 20);

  });
  test('check for two number substraction', (){
    // Arrange
    var a = 10;
    var b = 10;

    // Act
    var sub = substract(a, b);

    // Assert
    expect(sub, 0);

  });
  test('check for two number multiplication', (){
    // Arrange
    var a = 10;
    var b = 10;

    // Act
    var mult = multiply(a, b);

    // Assert
    expect(mult, 100);
});
  });
  
}