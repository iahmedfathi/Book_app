class EndPoint {
  static String newestBookEndPoint = "volumes?Filtering=free-ebooks&q=subject:Programming&sorting=newest";

  static String baseUrl = "https://www.googleapis.com/books/v1/";

  static String featuredBookEndPoint =
      "volumes?Filtering=free-ebooks&q=subject:Programming";
  // static String getUserDataEndPoint(id) {
  //   return "user/get-user/$id";
  // }
}

class ApiKey {
  static String type = "type";
  static String error = "error";

  static String errorMessage = "message";

  static String currency = "currency";
  static String amount = "amount";
  static String publishableKey =
      "pk_test_51QwV36FPhEhamRI5ajqu4ApQECkK8qZBin7QQGsqsk4wdixjhyyQ90eWWPf8Mx0cpj75tqcYlaeUgl8eFD2TDnfp00ESk40u1s";
}
