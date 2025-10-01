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

  // email

  testWidgets("Should have one text field form to collect user email id",
      (WidgetTester tester) async {

    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
  
    // Act
    Finder userNameTextField = find.byKey(const ValueKey("email_id"));

    // Assert
    expect(userNameTextField, findsOneWidget); 
    });


    testWidgets("Should have one text field form to collect Password",
      (WidgetTester tester) async {

    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
  
    // Act
    Finder passwordTextField = find.byKey(const ValueKey("password"));

    // Assert
    expect(passwordTextField, findsOneWidget); 
    });


    testWidgets("Should have one login button",
      (WidgetTester tester) async {

    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
  
    // Act
    Finder loginButton = find.byType(ElevatedButton); // Poderia ser byKey, mas usamos byType para exemplificar

    // Assert
    expect(loginButton, findsOneWidget); 
    });

    testWidgets(
      "Should show Required Field error message if user email id & password is empty",
      (WidgetTester tester) async {
        // Arrange
        await tester.pumpWidget(const MaterialApp(
          home: LoginScreen(),
        ));

        // Act
        Finder loginButton = find.byType(ElevatedButton);
        await tester.tap(loginButton);
        await tester.pumpAndSettle();

        Finder errorTexts = find.text("Require field");

        // Assert
        expect(errorTexts, findsNWidgets(2));
    });

    testWidgets("Should submit form when user email id & password is valid", 
        (WidgetTester tester) async {

      // Arrange
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));

      // Act  
      // entrar com o email e senha
      Finder userNameTextField = find.byKey(const ValueKey("email_id"));
      Finder passwordTextField = find.byKey(const ValueKey("password"));
      await tester.enterText(userNameTextField, "richa@gmail.com");
      await tester.enterText(passwordTextField, "password");

      // procurar o botao e clicar
      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // procurar as mensagens de erro
      Finder errorTexts = find.text("Require field");

      // Assert
      expect(errorTexts, findsNothing);

    });
}