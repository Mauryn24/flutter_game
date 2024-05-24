import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_funland/app.dart';
import './routes.dart';
// import 'package:fluttter_funland/routes.dart';

void main() {
  // Initialize the Fluro router
  final FluroRouter router = FluroRouter();

  // Configure the routes for the router
  Routes.configureRoutes(router);

  // Run the Flutter app with FunlandApp as the root widget
  runApp(FunlandApp(router: router));
}
