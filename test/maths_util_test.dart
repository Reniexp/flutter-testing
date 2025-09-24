import 'package:flutter_application_1/maths_util.dart';
import 'package:test/test.dart';


void main() {
  test('check for two number addition', (){
      // Arrange
      var a = 10;
      var b = 10;

      var sum = add(a, b);

      // Act


      //Assert
      expect(sum, 20);

  });
}