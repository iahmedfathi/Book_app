import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/end_pointes.dart';
import 'package:bookly/core/functions/save_box_data.dart';


abstract class HOmeRemoteDateSource {
  Future<List<BookEntity>> fetchRemoteFeaturedBooks();
  Future<List<BookEntity>> fetchRemoteNewestBooks();
}

class HomeRemoteDateSourceImpl extends HOmeRemoteDateSource {
  final ApiConsumer apiConsumer;

  HomeRemoteDateSourceImpl({required this.apiConsumer});
  @override
  Future<List<BookEntity>> fetchRemoteFeaturedBooks() async {
    final response = await apiConsumer.get(EndPoint.featuredBookEndPoint);
    List<BookEntity> books = getBooksList(response);
    saveBoxData(books, kFeaturedBooksBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchRemoteNewestBooks() async {
    final response = await apiConsumer.get(EndPoint.featuredBookEndPoint);
    List<BookEntity> books = getBooksList(response);
    saveBoxData(books, kFeaturedBooksBox);
    return books;
  }
List<BookEntity> getBooksList(response) {
  List<BookEntity> books = [];
  for (var book in response["items"]) {
    books.add(BookModel.fromJson(book));
  }
  return books;
}
}


