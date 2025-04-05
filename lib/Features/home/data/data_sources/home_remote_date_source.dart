import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/end_pointes.dart';
import 'package:bookly/core/errors/exceptions.dart';
import 'package:bookly/core/functions/save_box_data.dart';
import 'package:dartz/dartz.dart';

abstract class HOmeRemoteDateSource {
  Future<Either<String, List<BookEntity>>> fetchRemoteFeaturedBooks();
  Future<Either<String, List<BookEntity>>> fetchRemoteNewestBooks();
}

class HomeRemoteDateSourceImpl extends HOmeRemoteDateSource {
  final ApiConsumer apiConsumer;

  HomeRemoteDateSourceImpl({required this.apiConsumer});
  @override
  Future<Either<String, List<BookEntity>>> fetchRemoteFeaturedBooks() async {
    try {
      final response = await apiConsumer.get(EndPoint.featuredBookEndPoint);
      List<BookEntity> books = getBooksList(response);
      saveBoxData(books, kFeaturedBooksBox);
      return Right(books);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  @override
  Future<Either<String, List<BookEntity>>> fetchRemoteNewestBooks() async {
    try {
      final response = await apiConsumer.get(EndPoint.newestBookEndPoint);
      List<BookEntity> books = getBooksList(response);
      saveBoxData(books, kNewestBooksBox);

      return Right(books);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  List<BookEntity> getBooksList(response) {
    List<BookEntity> books = [];
    for (var book in response["items"]) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}
