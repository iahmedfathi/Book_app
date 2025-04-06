import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_featured_book_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());
  final FetchFeaturedBookUseCase fetchFeaturedBooksUseCase;
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final result = await fetchFeaturedBooksUseCase();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
