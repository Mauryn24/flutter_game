import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_funland/main.dart'; // Update with the correct path to your app's main.dart

void main() {
  testWidgets('Widget Test Example', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(FunlandApp()); // Update with your app's root widget

    // Verify that the app starts on the main game screen.
    expect(find.text('Welcome to Flutter Funland!'), findsOneWidget);

    // Example test: Verify navigation to Widget Workshop screen.
    await tester.tap(find.text('Enter Widget Workshop'));
    await tester.pumpAndSettle(); // Wait for navigation transition to complete
    expect(find.text('Learn about Flutter Widgets here!'), findsOneWidget);
    
    // Example test: Verify navigation back to main game screen.
    await tester.tap(find.byIcon(Icons.arrow_back)); // Assuming a back button is present
    await tester.pumpAndSettle(); // Wait for navigation transition to complete
    expect(find.text('Welcome to Flutter Funland!'), findsOneWidget);
  });
}
