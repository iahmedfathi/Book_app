import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  static NewestBooksCubit get(context) => BlocProvider.of(context);
  Future<void> fetchNewestBooks() async {
    final result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure)),
      (books) => emit(NewestBooksSuccess(books: books)),
    );
  }
}
