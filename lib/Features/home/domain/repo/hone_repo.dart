import 'package:bookly/Features/home/domain/entites/book_entity.dart';

abstract class HoneRepo {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}
