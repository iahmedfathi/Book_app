import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeLocalDataSource {
  Future<List<BookEntity>> fetchLocalFeaturedBooks();
  Future<List<BookEntity>> fetchLocalNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  Future<List<BookEntity>> fetchLocalFeaturedBooks() async {
    List<BookEntity> books =
        Hive.box<BookEntity>(kFeaturedBooksBox).values.toList();
    return books;
  }

  @override
  Future<List<BookEntity>> fetchLocalNewestBooks() async {
    List<BookEntity> books =
        Hive.box<BookEntity>(kNewestBooksBox).values.toList();
    return books;
  }
}
