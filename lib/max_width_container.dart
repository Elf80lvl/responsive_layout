import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';

class MaxWidthContainer extends StatelessWidget {
  const MaxWidthContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        child: child,
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
      ),
    );
  }
}
