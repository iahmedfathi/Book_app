

// Create an instance of GetIt
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/dio_consumer.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt  locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<DioConsumer>(DioConsumer(dio: Dio()));
  // Register API Consumer
  locator.registerSingleton<ApiConsumer>(locator.get<DioConsumer>());

 
  

  // Register Auth Cubit
}
