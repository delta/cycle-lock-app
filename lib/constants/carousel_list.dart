import 'package:cycle_lock/gen/assets.gen.dart';
import 'package:cycle_lock/models/slide.dart';

class CarouselList {
  static Map<int, Slide?> carouselList = {
    0: Slide(
        imageUrl: Assets.images.lock.path,
        title: 'This is a cycle app',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
    1: Slide(
        imageUrl: Assets.images.cycleIcon.path,
        title: 'This is the second page of the app',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    2: Slide(
        imageUrl: Assets.images.cycleIcon.path,
        title: 'This is the third page of the app',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
  };
}
