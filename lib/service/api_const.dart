import 'package:alatoo/model/hotel_model.dart';
import 'package:alatoo/model/room_model.dart';
import 'package:alatoo/model/reservation_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _client = Dio();

  get dio => null;
  Future<HotelModel?> getUsers() async {
    try {
      var response = await _client
          .get("http://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3/");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return HotelModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<ReservationModel?> getUsers2() async {
    try {
      var response = await _client
          .get('http://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ReservationModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<List<RoomModel>?> getApartament() async {
    try {
      var response = await _client
          .get("http://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd");
      if (response.statusCode == 200 || response.statusCode == 201) {
        List rooms = response.data['rooms'];
        return rooms.map((e) => RoomModel.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
