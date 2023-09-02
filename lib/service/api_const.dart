// import 'dart:convert';

// import 'package:alatoo/model/hotel_model.dart';
// import 'package:http/http.dart' as http;

// class HotelResponce {
//   HotelResponce({required this.hotelValues, required this.statusCode});
//   final HotelResponce hotelValues;
//   final int statusCode;
// }

// class HotelService {
//   final String baseUrl =
//       "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3";

//   Future<List<HotelModel>> getAllImages() async {
//     final response = await http
//         .get(Uri.parse('$baseUrl.[HotelModel().aboutTheHotel]'), headers: {
//       "Access-Control-Allow-Origin": "*",
//       'Content-Type': 'application/json',
//       'Accept': '*/*'
//     });

//     // if (response.statusCode == 200 || response.statusCode == 201) {
//     //   //final List serviceCorporate = jsonDecode(utf8.decode(response.bodyBytes));
//     //   final List data = (jsonDecode(response.body))['results'];
//     //   print(response.body);
//     //   return data.map((e) => HotelModel.fromJson(e)).toList();
//     // } else {
//     //   throw Exception("Server failre");
//     // }
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final List hotels = jsonDecode(utf8.decode(response.bodyBytes));
//       return hotels.map((e) => HotelModel.fromJson(e)).toList();
//     } else {
//       throw Exception("Server failre");
//     }
//   }
// }
