import 'package:dio/dio.dart';

class TrafficInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1IjoicmpjaHYiLCJhIjoiY2wybTl2MWd5MXAwNDNjbHd2MnNvd2VqMSJ9.e54_IsnnBMhn7uh3Wo5sVA';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken
    });
    //'geometries': 'geojson',

    super.onRequest(options, handler);
  }
}
