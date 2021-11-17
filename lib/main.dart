import 'package:flutter/material.dart';
import 'package:test_ar/views/android_ar.dart';
import 'package:test_ar/views/ios_ar.dart';
import 'dart:io' show Platform;

void main() {
  runApp(Platform.isAndroid ? const AndroidAR() : const IosAR());
}
