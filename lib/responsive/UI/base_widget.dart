import 'package:flutter/material.dart';
import 'package:flutter_responsive_architecture/responsive/UI/sizing_informations.dart';
import 'package:flutter_responsive_architecture/responsive/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformations informations)
      builder;
  const BaseWidget({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQuery = MediaQuery.of(context);
        var sizingInformations = SizingInformations(
          orientation: mediaQuery.orientation,
          deviceScreenType: getScreenType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
        );
        return builder(context, sizingInformations);
      },
    );
  }
}
