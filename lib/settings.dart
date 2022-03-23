import 'package:flutter/material.dart';

class Settings {
  static final Settings _singleton = Settings._internal();

  factory Settings() {
    return _singleton;
  }

  Settings._internal();

  bool get firstLaunch => true;
  Brightness get theme => Brightness.dark;
  bool get cardsExpandedByDefault => true;
}