import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './screens/animation_alley.dart';
import './screens/avatar_customization.dart';
import './screens/settings_screen.dart';
import './screens/profile_screen.dart';
import './screens/tutorial_widget.dart';
import './screens/about_screen.dart';
import './screens/programming_challenge_widget.dart';
import './screens/home_screen.dart';
import './screens/signup_screen.dart';
import './screens/auth_screen.dart';
// import 'package:fluttter_funland/screens/animation_alley.dart';
// import 'package:fluttter_funland/screens/avatar_customization.dart';
// import 'package:fluttter_funland/screens/settings_screen.dart';
// import 'package:fluttter_funland/screens/profile_screen.dart';
// import 'package:fluttter_funland/screens/about_screen.dart';
// import 'package:fluttter_funland/screens/tutorial_widget.dart';
// import 'package:fluttter_funland/screens/programming_challenge_widget.dart';

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define('/home', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const HomeScreen();
      },
    ));

    // Define the route for the login screen
    router.define('/auth', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AuthScreen();
      },
    ));

    // Define the route for the sign-up screen
    router.define('/signup', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const SignUpScreen();
      },
    ));

    router.define('/animation_alley', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AnimationAlley();
      },
    ));
    router.define('/avatar_customization', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AvatarCustomizationScreen();
      },
    ));
    router.define('/settings', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const SettingsScreen();
      },
    ));
    router.define('/profile', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const ProfileScreen();
      },
    ));
    router.define('/about', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const AboutScreen();
      },
    ));
    router.define('/tutorial', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const TutorialWidget();
      },
    ));
    router.define('/programming_challenge', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return ProgrammingChallengeWidget(
          challengeDescription:
              'Create a Flutter app with two screens and navigate between them.',
          onCodeSubmit: () {
            // Handle code submission
          },
        );
      },
    ));
  }
}
