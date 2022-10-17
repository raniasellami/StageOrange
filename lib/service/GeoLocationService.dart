import 'package:dio/dio.dart';
import 'package:stageorange/service/LocationReponse.dart';

class GeoLocationService {
  final Dio _dio = Dio();

  final _baseUrl = 'https://nominatim.openstreetmap.org';

  Future<LocationResponse> getLocation(
      {required String lat, required String lng}) async {
    print(lat);
    Response userData =
        await _dio.get(_baseUrl + '/reverse?lat=${lat}&lon=${lng}&format=json');
    LocationResponse reponse = LocationResponse.fromJson(userData.data);

    return reponse;
  }
}
