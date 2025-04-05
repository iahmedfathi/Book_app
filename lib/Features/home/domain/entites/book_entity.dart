import 'package:hive_flutter/hive_flutter.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String author;
  @HiveField(3)
  final String? description;
  @HiveField(4)
  final String? imageUrl;
  @HiveField(5)
  final num? rating;
  @HiveField(6)
  final num? price;

  BookEntity({
    required this.rating,
    required this.price,
    required this.bookId,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
  });
}
