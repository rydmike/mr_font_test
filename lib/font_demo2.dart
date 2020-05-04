import 'package:flutter/material.dart';
import 'package:flutter_material_showcase/flutter_material_showcase.dart';

import 'gradient_appbar.dart';

class FontDemo2 extends StatelessWidget {
  const FontDemo2({Key key, this.title}) : super(key: key);
  final String title;

  static const String route = '/demo2';

  @override
  Widget build(BuildContext context) {
    final double _topPadding = MediaQuery.of(context).padding.top;
    return Theme(
      data: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[50],
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
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
                    const Text('FONT ISSUE: Demo Roboto',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text(
                        'This page uses Roboto font for all platforms. To ensure we '
                        'always get Roboto, it is provided as a bundled asset.'),
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
