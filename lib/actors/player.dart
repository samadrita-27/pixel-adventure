import 'dart:async';

import 'package:flame/components.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

enum PlayerState { idle, running }

class Player extends SpriteAnimationGroupComponent
    with HasGameRef<PixelAdventure> {
  late final SpriteAnimation idleAnimation;
  late final SpriteAnimation runningAnimation;
  final double stepTime = 0.05; // 50 milliseconds

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimations();
    return super.onLoad();
  }

  void _loadAllAnimations() {
    idleAnimation = SpriteAnimation.fromFrameData(
        game.images.fromCache('Main Character/Ninja Frog/Idle (32x32).png'),
        SpriteAnimationData.sequenced(
            amount: 11, stepTime: stepTime, textureSize: Vector2.all(32)));
    runningAnimation = SpriteAnimation.fromFrameData(
        game.images.fromCache('Main Character/Ninja Frog/Run (32x32).png'),
        SpriteAnimationData.sequenced(
            amount: 12, stepTime: stepTime, textureSize: Vector2.all(32)));
    // list of all animations
    animations = {
      PlayerState.idle: idleAnimation,
      PlayerState.running: runningAnimation
      };
    // set current animation
    current = PlayerState.running;
  }
}
