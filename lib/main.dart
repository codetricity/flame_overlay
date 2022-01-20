import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'dialog_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return overlayBuilder(context);
  }
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {}

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    overlays.add('DialogButton');
  }
}

Widget overlayBuilder(BuildContext context) {
  return GameWidget<MyGame>(
    game: MyGame(),
    overlayBuilderMap: const {
      'DialogButton': dialogButton,
    },
    initialActiveOverlays: const ['DialogButton'],
  );
}
