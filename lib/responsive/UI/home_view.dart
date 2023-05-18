import 'package:flutter/material.dart';
import 'package:flutter_responsive_architecture/responsive/UI/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformations) {
        return Scaffold(
          body: Center(
            child: Text(
              sizingInformations.toString(),
            ),
          ),
        );
      },
    );
  }
}
