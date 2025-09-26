import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_example_1/login_screen.dart';

void main() {
  testWidgets('Should have a tittle', (WidgetTester tester) async {

    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),));
  
    // Act
    Finder tittle = find.text("Login"); // find.byType(Text) é mais recomendado

    // Assert
    expect(tittle, findsOneWidget); // findsOneWidget ou findsWidgets busca todos/findsNWidgets
  });
}