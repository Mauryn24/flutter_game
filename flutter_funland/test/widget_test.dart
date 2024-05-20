import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_funland/main.dart';
import 'package:fluro/fluro.dart';

void main() {
  final FluroRouter router = FluroRouter();
  Routes.configureRoutes(router);

  testWidgets('HomeScreen has two buttons', (WidgetTester tester) async {
    await tester.pumpWidget(FunlandApp(router: router));

    expect(find.text('Animation Alley'), findsOneWidget);
    expect(find.text('Avatar Customization'), findsOneWidget);
  });

  testWidgets('Navigates to AnimationAlley when button is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(FunlandApp(router: router));

    await tester.tap(find.text('Animation Alley'));
    await tester.pumpAndSettle();

    expect(find.text('Welcome to Animation Alley!'), findsOneWidget);
  });

  testWidgets('Navigates to AvatarCustomizationScreen when button is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(FunlandApp(router: router));

    await tester.tap(find.text('Avatar Customization'));
    await tester.pumpAndSettle();

    expect(find.text('Welcome to Avatar Customization!'), findsOneWidget);
  });
}
