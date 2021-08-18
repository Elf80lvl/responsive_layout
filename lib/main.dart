import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';
import 'package:responsive/max_width_container.dart';
import 'package:responsive/responsive_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MaxWidthContainer(
        child: ResponsiveLayout(
          mobileBody: MyCustomMobileContent(),
          tabletBody: MyCustomTabletBody(),
          desktopBody: MyCustomDesktopWidget(),
        ),
      ),
      appBar: screenWidth <= kTabletBreakpoint ? AppBar() : null,
    );
  }
}

class MyCustomMobileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Mobile',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
      height: 200,
      color: Colors.green,
      width: double.infinity,
    );
  }
}

class MyCustomTabletBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Tablet',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
      height: 200,
      color: Colors.blue,
      width: double.infinity,
    );
  }
}

class MyCustomDesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Desktop',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        height: 200,
        color: Colors.red,
        width: double.infinity,
      ),
    );
  }
}
