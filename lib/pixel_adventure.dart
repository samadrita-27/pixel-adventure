import 'dart:async';

import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'package:pixel_adventure/levels/level.dart';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() =>
      const Color(0xFF211F30); // 0xFF means no transparency
  late final CameraComponent cam;

  late final world = Level();

  @override
  FutureOr<void> onLoad() async {
    print("LALALALa");
    await images.loadAllImages();
    // load all images into cache
    cam = CameraComponent.withFixedResolution(
        world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);

    print("Utkobangal");

    return super.onLoad();
  }
}
