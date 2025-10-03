import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:login_example_1/login_screen.dart';

void main() {
  group("Login Flow Test", (){
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets(
      "Should show home screen when user taps on login button after entering valid email id & password", (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));

      // Act  
      // entrar com o email e senha
      Finder userNameTextField = find.byKey(const ValueKey("email_id"));
      Finder passwordTextField = find.byKey(const ValueKey("password"));
      await tester.enterText(userNameTextField, "richa@gmail.com");
      await tester.pump(const Duration(seconds: 1));
      await tester.enterText(passwordTextField, "password");
      await tester.pump(const Duration(seconds: 1));

      // procurar o botao e clicar
      Finder loginButton = find.byType(ElevatedButton);
      await tester.tap(loginButton);
      await tester.pump(const Duration(seconds: 1));
      await tester.pumpAndSettle();

      Finder welcomeText = find.byType(Text);


      // Assert
      expect(welcomeText, findsOneWidget);
    });
  });
}