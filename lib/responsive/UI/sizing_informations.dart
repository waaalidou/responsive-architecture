import 'package:flutter/material.dart';
import 'package:flutter_responsive_architecture/responsive/enums/screen_type_enum.dart';

class SizingInformations {
  late Orientation? orientation;
  late DeviceScreenType? deviceScreenType;
  late Size? screenSize;
  late Size? localWidgetSize;

  SizingInformations({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'Orientation: $orientation,'
    'DeviceType: $deviceScreenType, ScreenSize: $screenSize, localWidgetSize: $localWidgetSize';
  }
}
