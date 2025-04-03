class BookEntity {
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final num rating;
  final num price;

  BookEntity(
    this.rating,
    this.price, {
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
  });
}
