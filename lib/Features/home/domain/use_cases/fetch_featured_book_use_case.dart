import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/repo/hone_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBookUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBookUseCase({required this.homeRepo});

  Future<Either<String, List<BookEntity>>> fetchFeaturedBookUseCase() {
    return homeRepo.fetchFeaturedBooks();
  }
}
