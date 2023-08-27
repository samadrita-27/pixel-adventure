import 'package:flame/cache.dart';
import 'package:flame/game.dart';

class Imageload extends FlameGame {
  @override
  void load() async => await images.loadAllImages();
}
