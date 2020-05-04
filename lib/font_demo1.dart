import 'package:flutter/material.dart';
import 'package:flutter_material_showcase/flutter_material_showcase.dart';

import 'gradient_appbar.dart';

class FontDemo1 extends StatelessWidget {
  const FontDemo1({Key key, this.title}) : super(key: key);
  final String title;

  static const String route = '/demo1';

  @override
  Widget build(BuildContext context) {
    final double _topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
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
                  const Text('FONT ISSUE: Platform default',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text(
                      'This page uses no specified font theme it should show up '
                      'using the default font for each used platform.'),
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
    );
  }
}
