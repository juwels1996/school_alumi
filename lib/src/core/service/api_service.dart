import 'package:dio/dio.dart';
import 'package:testing_purpose/src/core/model/user_model.dart';

import '../../configuration/dio_config.dart';

class ApiService {
  final Dio _dio;

  ApiService() : _dio = DioConfig().dio;

  Future<UserDetails> fetchUserData() async {
    try {
      final response = await _dio.get("");
      print("Response--> ${response.data}");

      // Parse the API response into UserDetails
      return UserDetails.fromJson(response.data);
    } catch (e) {
      print("Error fetching user data: $e");
      throw Exception("Failed to load user data");
    }
  }
}



