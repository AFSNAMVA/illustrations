import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBorders {
  const AppBorders._();

  static get all8 {
    return const BorderRadius.all(Radius.circular(8)).w;
  }
  static get all10 {
    return const BorderRadius.all(Radius.circular(10)).w;
  }
 static get all16 {
    return const BorderRadius.all(Radius.circular(16)).w;
  }
static BorderRadius get top16 {
    return const BorderRadius.only(
      topLeft: Radius.circular(16.0),
      topRight: Radius.circular(16.0),
    );
  }
}
