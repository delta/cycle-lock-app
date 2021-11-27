import 'package:cycle_lock/models/slide.dart';

class CarouselList {
  static Map<int, Slide?> carouselList = {
    0: Slide(
        imageUrl: 'assets/images/lock.png',
        title: 'This is a cycle app',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
    1: Slide(
        imageUrl: 'assets/images/cycle-icon.webp',
        title: 'This is the second page of the app',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
    2: Slide(
        imageUrl: 'assets/images/cycle-icon.webp',
        title: 'This is the third page of the app',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
  };
}
