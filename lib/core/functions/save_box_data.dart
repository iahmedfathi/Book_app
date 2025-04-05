import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

void saveBoxData(List<BookEntity> books, String boxName) {
  var localBooks = Hive.box<BookEntity>(boxName);

  localBooks.addAll(books);
}
