import 'package:flutter/material.dart';
import 'package:sofomo/core/logger/logger.dart';

class LoggingValueNotifier<T> extends ValueNotifier<T> {
  LoggingValueNotifier(super.value);

  void set(T value) {
    logger.info('[State Change]\n${this.value}\n=>\n$value');
    this.value = value;
  }
}
