import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class DarkTheme extends StatefulWidget {
  @override
  _DarkThemeState createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: Duration(milliseconds: 200),
      data: Theme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Adaptive Theme Demo'),
        ),
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Current Theme Mode',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.8,
                ),
              ),
              Text(
                AdaptiveTheme.of(context).mode.name.toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  height: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  AdaptiveTheme.of(context).toggleThemeMode();
                },
                child: Text('Toggle Theme Mode'),
              ),
              ElevatedButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setDark();
                },
                child: Text('Set Dark'),
              ),
              ElevatedButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setLight();
                },
                child: Text('set Light'),
              ),
              ElevatedButton(
                onPressed: () {
                  AdaptiveTheme.of(context).setSystem();
                },
                child: Text('Set System Default'),
              ),
              Spacer(flex: 8),
            ],
          ),
        ),
      ),
    );
  }
}
