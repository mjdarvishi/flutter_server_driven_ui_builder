import 'package:flutter/material.dart';
import 'package:flutter_server_driven/utils/hex_color.dart';

extension ContextExtensions on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  Size get size {
    return MediaQuery.of(this).size;
  }

  EdgeInsets get padding {
    return MediaQuery.of(this).padding;
  }

  double get width {
    return size.width;
  }

  double get height {
    return size.height;
  }
}

extension StrExtensions on String? {
  Color? get color {
    if (this == null) {
      return null;
    }
    {
      return HexColor(this!);
    }
  }
}
