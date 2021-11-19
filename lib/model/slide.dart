class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/cycle-icon.webp',
      title: 'This is a cycle app',
      description: 'this is what it is about'),
  Slide(
      imageUrl: 'assets/cycle-icon.webp',
      title: 'This is the second page of the app',
      description: 'this is what it is about'),
  Slide(
      imageUrl: 'assets/cycle-icon.webp',
      title: 'This is the third page of the app',
      description: 'this is what it is about'),
];
