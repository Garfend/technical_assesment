import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BlurFilter extends StatelessWidget {
  const BlurFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF222222).withAlpha(0),
              const Color(0xFF222222).withAlpha(138),
              const Color(0xFF222222).withAlpha(255),
            ],
            stops: const [0.1, 0.35, 1.0],
          ),
        ),
      ),
    );
  }
}
