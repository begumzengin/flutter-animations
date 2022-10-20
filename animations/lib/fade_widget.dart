import 'package:flutter/material.dart';

class FadeWidgetApp extends StatefulWidget {
  const FadeWidgetApp({super.key});

  //final String title;

  @override
  State<FadeWidgetApp> createState() => _FadeWidgetAppState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _FadeWidgetAppState extends State<FadeWidgetApp> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('opacity demo'),
      ),
      body: Center(
          child: AnimatedOpacity(
              // If the widget is visible, animate to 0.0 (invisible).
              // If the widget is hidden, animate to 1.0 (fully visible).
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              // The green box must be a child of the AnimatedOpacity widget.
              child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Color.fromARGB(255, 243, 200, 251)))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'toggle opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
