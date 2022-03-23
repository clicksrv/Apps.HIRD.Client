import 'package:flutter/material.dart';

class SizeHelper {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double _safeBlockHorizontal = 0;
  static double _safeBlockVertical = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    _blockSizeHorizontal = screenWidth / 100;
    _blockSizeVertical = screenHeight / 100;

    final safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    final safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;

    _safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;
    _safeBlockVertical = (screenHeight - safeAreaVertical) / 100;
  }

  static double safeHeightPercent(double percent) {
    if (screenHeight == 0) {
      throw NotInitializedError();
    }

    return _safeBlockVertical * percent;
  }

  static double heightPercent(double percent) {
    if (screenHeight == 0) {
      throw NotInitializedError();
    }

    return _blockSizeVertical * percent;
  }

  static double safeWidthPercent(double percent) {
    if (screenWidth == 0) {
      throw NotInitializedError();
    }

    return _safeBlockHorizontal * percent;
  }

  static double widthPercent(double percent) {
    if (screenWidth == 0) {
      throw NotInitializedError();
    }

    return _blockSizeHorizontal * percent;
  }
}

class NotInitializedError extends Error {}
