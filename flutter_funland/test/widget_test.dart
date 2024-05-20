import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_funland/main.dart';
import 'package:fluro/fluro.dart';

void main() {
  // Initialize the FluroRouter and configure the routes.
  final FluroRouter router = FluroRouter();
  Routes.configureRoutes(router);

  // Test to verify that the HomeScreen has two buttons.
  testWidgets('HomeScreen has two buttons', (WidgetTester tester) async {
    // Build the FunlandApp widget and trigger a frame.
    await tester.pumpWidget(FunlandApp(router: router));

    // Verify that the buttons with text 'Animation Alley' and 'Avatar Customization' are present.
    expect(find.text('Animation Alley'), findsOneWidget);
    expect(find.text('Avatar Customization'), findsOneWidget);
  });

  // Test to verify navigation to AnimationAlley when the button is pressed.
  testWidgets('Navigates to AnimationAlley when button is pressed', (WidgetTester tester) async {
    // Build the FunlandApp widget and trigger a frame.
    await tester.pumpWidget(FunlandApp(router: router));

    // Tap the button with text 'Animation Alley' and trigger a frame.
    await tester.tap(find.text('Animation Alley'));
    await tester.pumpAndSettle();

    // Verify that the AnimationAlley screen is displayed by checking for the presence of specific text.
    expect(find.text('Welcome to Animation Alley!'), findsOneWidget);
  });

  // Test to verify navigation to AvatarCustomizationScreen when the button is pressed.
  testWidgets('Navigates to AvatarCustomizationScreen when button is pressed', (WidgetTester tester) async {
    // Build the FunlandApp widget and trigger a frame.
    await tester.pumpWidget(FunlandApp(router: router));

    // Tap the button with text 'Avatar Customization' and trigger a frame.
    await tester.tap(find.text('Avatar Customization'));
    await tester.pumpAndSettle();

    // Verify that the AvatarCustomizationScreen is displayed by checking for the presence of specific text.
    expect(find.text('Welcome to Avatar Customization!'), findsOneWidget);
  });
}
