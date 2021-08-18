import 'package:flutter/material.dart';
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
    return Scaffold(
      body: MaxWidthContainer(
        child: ResponsiveLayout(
          mobileBody: MyCustomMobileContent(),
          tabletBody: MyCustomTabletBody(),
          desktopBody: MyCustomDesktopWidget(),
        ),
      ),
    );
  }
}

class MyCustomMobileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Mobile Body');
  }
}

class MyCustomTabletBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Tablet Body');
  }
}

class MyCustomDesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Desktop Body',
          textAlign: TextAlign.center,
        ),
        height: 200,
        color: Colors.red,
        width: double.infinity,
      ),
    );
  }
}
