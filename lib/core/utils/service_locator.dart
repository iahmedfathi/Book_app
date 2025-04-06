// Create an instance of GetIt
import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_date_source.dart';
import 'package:bookly/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/Features/home/domain/repo/hone_repo.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_featured_book_use_case.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/dio_consumer.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<DioConsumer>(DioConsumer(dio: Dio()));
  // Register API Consumer
  locator.registerSingleton<ApiConsumer>(locator.get<DioConsumer>());
  locator.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      homeLocalDateSource: HomeLocalDataSourceImpl(),
      homeRemoteDateSource:
          HomeRemoteDateSourceImpl(apiConsumer: locator.get<ApiConsumer>()),
    ),
  );

  locator.registerSingleton<FetchFeaturedBookUseCase>(
      FetchFeaturedBookUseCase(homeRepo: locator.get<HomeRepo>()));
  locator.registerSingleton<FetchNewestBooksUseCase>(
      FetchNewestBooksUseCase(homeRepo: locator.get<HomeRepo>()));
}
