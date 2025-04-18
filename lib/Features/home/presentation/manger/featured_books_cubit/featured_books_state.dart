part of 'featured_books_cubit.dart';

class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;
  FeaturedBooksFailure(this.message);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookEntity> books;
  FeaturedBooksSuccess(this.books);
}
