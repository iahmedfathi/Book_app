import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/repo/hone_repo.dart';
import 'package:bookly/Features/home/domain/use_cases/uscase.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<String, List<BookEntity>>> call([NoParam? param]) {
    return homeRepo.fetchNewestBooks();
  }
}
