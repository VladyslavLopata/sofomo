import 'package:flutter/material.dart';
import 'package:sofomo/app.dart';
import 'package:sofomo/core/di/di.dart';

void main() {
  setupDependencyInjection();
  runApp(const MainApp());
}
