import 'package:flutter/material.dart';
import 'package:flutter_responsive_architecture/responsive/enums/screen_type_enum.dart';

DeviceScreenType getScreenType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  var deviceWidth = .0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }
  if (deviceWidth > 950) {
    return DeviceScreenType.desktop;
  } else if (deviceWidth > 600) {
    return DeviceScreenType.tablet;
  }
  return DeviceScreenType.mobile;
}
