import 'package:flutter/material.dart';
import 'package:flutter_material_showcase/flutter_material_showcase.dart';

import 'gradient_appbar.dart';

class FontDemo3 extends StatelessWidget {
  const FontDemo3({Key key, this.title}) : super(key: key);
  final String title;

  static const String route = '/demo3';

  @override
  Widget build(BuildContext context) {
    final double _topPadding = MediaQuery.of(context).padding.top;
    return Theme(
      data: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50],
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: GradientAppBar(title: title),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: _topPadding + kToolbarHeight + 20),
          child: Row(
            children: <Widget>[
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text('FONT ISSUE: Demo Montserrat',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text(
                        'This page uses Montserrat font for all platforms. To ensure we '
                        'always get Montserrat, it is provided as a bundled asset.'),
                    const SizedBox(height: 20),
                    MaterialShowcase(),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
