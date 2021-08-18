import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth < kTabletBreakpoint) {
        return mobileBody;
      } else if (dimens.maxWidth >= kTabletBreakpoint &&
          dimens.maxWidth < kDestopBreakpoint) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
