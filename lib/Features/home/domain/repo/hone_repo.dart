import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<String, List<BookEntity>>> fetchNewestBooks();
}
