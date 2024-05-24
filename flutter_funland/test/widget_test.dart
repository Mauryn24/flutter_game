import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_funland/main.dart'; // Update to your actual main file path
import 'package:flutter_funland/screens/home_screen.dart'; // Update to your actual home screen path

void main() {
  testWidgets('HomeScreen displays buttons and navigates correctly', (WidgetTester tester) async {
    // Build the HomeScreen widget
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    // Verify that the HomeScreen displays the correct buttons
    expect(find.text('Tutorial'), findsOneWidget);
    expect(find.text('Animation Alley'), findsOneWidget);
    expect(find.text('Avatar Customization'), findsOneWidget);
    expect(find.text('Programming Challenge'), findsOneWidget);

    // Tap on the 'Tutorial' button and verify navigation
    await tester.tap(find.text('Tutorial'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome to Flutter Funland!'), findsOneWidget);

    // Return to HomeScreen
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Tap on the 'Animation Alley' button and verify navigation
    await tester.tap(find.text('Animation Alley'));
    await tester.pumpAndSettle();
    expect(find.text('Animation Alley'), findsOneWidget);

    // Return to HomeScreen
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Tap on the 'Avatar Customization' button and verify navigation
    await tester.tap(find.text('Avatar Customization'));
    await tester.pumpAndSettle();
    expect(find.text('Avatar Customization'), findsOneWidget);

    // Return to HomeScreen
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Tap on the 'Programming Challenge' button and verify navigation
    await tester.tap(find.text('Programming Challenge'));
    await tester.pumpAndSettle();
    expect(find.text('Challenge:'), findsOneWidget);
  });

  testWidgets('Navigating through the drawer menu', (WidgetTester tester) async {
    // Build the HomeScreen widget
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    // Open the drawer
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    // Tap on the 'Settings' menu item and verify navigation
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('Settings Page'), findsOneWidget);

    // Return to HomeScreen
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Open the drawer again
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    // Tap on the 'Profile' menu item and verify navigation
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();
    expect(find.text('Profile Page'), findsOneWidget);

    // Return to HomeScreen
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Open the drawer again
    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    // Tap on the 'About' menu item and verify navigation
    await tester.tap(find.text('About'));
    await tester.pumpAndSettle();
    expect(find.text('About this App'), findsOneWidget);
  });
}
