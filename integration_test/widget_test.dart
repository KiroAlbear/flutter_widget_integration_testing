// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled1/main.dart' as app;

void main() {
  testWidgets('test Failed Login', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app.MyApp());
    await tester.pumpAndSettle();

    final usernameField = find.ancestor(
      of: find.text("Username"),
      matching: find.byType(TextField),
    );

    final passwordField = find.ancestor(
      of: find.text('Password'),
      matching: find.byType(TextField),
    );
    final loginButton = find.text('Login');
    final failedText = find.text('Failed');

    await tester.enterText(usernameField, "test");
    await tester.pumpAndSettle(Duration(seconds: 1));
    await tester.enterText(passwordField, "test");
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.tap(loginButton);
    await tester.pumpAndSettle(Duration(seconds: 1));

    expect(failedText, findsOneWidget);
    // final bool asd = true;
    // expect(asd, findsOneWidget);
  });

  testWidgets('test Success Login ', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app.MyApp());
    await tester.pumpAndSettle();
    final usernameField = find.ancestor(
      of: find.text('Username'),
      matching: find.byType(TextField),
    );

    final passwordField = find.ancestor(
      of: find.text('Password'),
      matching: find.byType(TextField),
    );
    await tester.enterText(usernameField, "test2");
    await tester.pumpAndSettle(Duration(seconds: 1));
    await tester.enterText(passwordField, "test");
    await tester.pumpAndSettle(Duration(seconds: 1));
    final loginButton = find.text('Login');
    await tester.tap(loginButton);
    await tester.pumpAndSettle(Duration(seconds: 1));
    expect(find.text('Success'), findsOneWidget);

    // final bool asd = true;
    // expect(asd, findsOneWidget);
  });

  // testWidgets('test 2', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   app.main();
  //   tester.tap(find.text('Login'));
  //   // expect(find.text('Username'), findsOneWidget);
  // });
}
