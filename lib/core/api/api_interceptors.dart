import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //   if (options.path.contains("stripe")) {
    //   // Use Stripe's API key for authorization
    //   options.headers["Authorization"] = "Bearer ${ApiKey.secretKey}";
    //   options.contentType = Headers.formUrlEncodedContentType;
    // } else {
    //   // Use ShopApp's token for authorization
    //   options.headers["Authorization"] = token;
    //   options.headers["lang"] = 'en';
    // }
    super.onRequest(options, handler);
  }
}
