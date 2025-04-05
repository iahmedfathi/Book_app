class BookEntity {
  final String bookId;
  final String title;
  final String author;
  final String? description;
  final String? imageUrl;
  final num? rating;
  final num? price;

  BookEntity({
    required this.rating,
    required this.price,
    required this.bookId,
    required this.title,
    required this.author,
    required this.description,
    required this.
    imageUrl,
  });
}
