import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ProceedButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Color(0xFFFFFFFF).withAlpha(40),
        )
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(Icons.arrow_forward_ios),
        color: Color(0xFFE4B679),
      ),
    );
  }
}
