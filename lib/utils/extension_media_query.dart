import 'package:flutter/cupertino.dart';

extension ExtensionMediaQuery on BuildContext {
  double width(value) => MediaQuery.of(this).size.width * value;
  double height(value) => MediaQuery.of(this).size.height * value;
}
