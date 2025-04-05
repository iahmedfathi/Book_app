import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_date_source.dart';
import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/repo/hone_repo.dart';
import 'package:bookly/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HOmeRemoteDateSource homeRemoteDateSource;
  final HomeLocalDataSource homeLocalDateSource;

  HomeRepoImpl(
      {required this.homeRemoteDateSource, required this.homeLocalDateSource});
  @override
  Future<Either<String, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = await homeLocalDateSource.fetchLocalFeaturedBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDateSource.fetchRemoteFeaturedBooks();

      return Right(books);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  @override
  Future<Either<String, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = await homeLocalDateSource.fetchLocalNewestBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDateSource.fetchRemoteNewestBooks();

      return Right(books);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
    
  }
}
