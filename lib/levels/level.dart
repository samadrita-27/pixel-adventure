import 'dart:async';

import 'package:flame/components.dart';

import 'package:flame_tiled/flame_tiled.dart';

import 'package:pixel_adventure/actors/player.dart';

// world component implements coordinate transform
class Level extends World {
  late TiledComponent level;

  @override
  FutureOr<void> onLoad() async {
    print("paglachoda");
    level = await TiledComponent.load("level_01.tmx", Vector2.all(16));
    add(level);
    print("hego");
    await add(Player());
    // print("alabu");
    return super.onLoad(); // onload runs the code only once
  }
}
