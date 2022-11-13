import 'package:dio/dio.dart';

class PlacesInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1IjoicmpjaHYiLCJhIjoiY2wybTl2MWd5MXAwNDNjbHd2MnNvd2VqMSJ9.e54_IsnnBMhn7uh3Wo5sVA';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'access_token': accessToken,
      'language': 'es',
      // 'limit': 7,
      'country': 'pe',
      'types': 'place,postcode,address'
    });

    super.onRequest(options, handler);
  }
}
