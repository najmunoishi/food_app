class Categories {
  final String title;
  final String image;
  Categories(
    this.title,
    this.image,
  );
}

final List<Categories> categories = [
  Categories('Fruits', 'assets/images/apple.png'),
  Categories('Vegetables', 'assets/images/broccoli.png'),
  Categories('Diary', 'assets/images/cheese.png'),
  Categories('Meat', 'assets/images/meat.png'),

];