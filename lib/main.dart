import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_storyboard/flutter_storyboard.dart';
import 'package:mr_font_test/font_demo3.dart';

import 'font_demo1.dart';
import 'font_demo2.dart';
import 'gradient_appbar.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[50], // navigation bar color
        statusBarColor: Colors.indigo,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return StoryBoard.material(
      enabled: true,
      screenSize: const Size(450, 750),
      initialOffset: const Offset(20, 40),
      initialScale: 1,
      child: MaterialApp(
          title: 'Flutter Font Test',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            scaffoldBackgroundColor: Colors.grey[50],
            buttonTheme: ButtonThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          initialRoute: HomePage.route,
          routes: {
            HomePage.route: (_) => const HomePage(title: 'Font Issue Test'),
            FontDemo1.route: (_) =>
                const FontDemo1(title: 'Platform Default Font'),
            FontDemo2.route: (_) =>
                const FontDemo2(title: 'Forced Roboto Font'),
            FontDemo3.route: (_) =>
                const FontDemo3(title: 'Forced Montserrat Font'),
          }),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.title}) : super(key: key);
  final String title;

  static const String route = '/';

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
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Font issue demos',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 20),

                  // *********************************************************

                  const Text(
                      'This page will use no specified font, it should show up '
                      'using the default font for the active platform.'),
                  RaisedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, FontDemo1.route),
                    child: const Text('Platform Default Font'),
                  ),
                  const SizedBox(height: 20),

                  // *********************************************************

                  const Text(
                    'This page will use Roboto font for all platforms. To ensure we '
                    'always get Roboto, it is provided as a bundled asset.',
                  ),
                  RaisedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, FontDemo2.route),
                    child: const Text('Forced Roboto Font'),
                  ),
                  const SizedBox(height: 20),

                  // *********************************************************

                  const Text(
                      'This page will use Montserrat font for all platforms. To ensure we '
                      'always get Montserrat, it is provided as a bundled asset.'),
                  RaisedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, FontDemo3.route),
                    child: const Text('Forced Montserrat Font'),
                  ),
                  const SizedBox(height: 20),

                  // *********************************************************
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
