import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:testing_purpose/src/configuration/dio_config.dart';

import '../core/model/user_model.dart';
import '../core/service/api_service.dart';

class HomeController extends GetxController {
  final users = <UserDatum>[].obs;
  final isLoading = true.obs;
  final ApiService _apiService;

  HomeController() : _apiService = ApiService();


  Future<void> fetchUserData() async {
    isLoading.value = true;
    try {
      final userDetails = await _apiService.fetchUserData();
      if (userDetails.userData != null) {
        users.value = userDetails.userData!;
      } else {
        Fluttertoast.showToast(msg: "No user data found");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Error fetching user data: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updateUser(UserDatum updatedUser) async {
    try {
      if (updatedUser.id == null) {
        throw Exception("User ID is null");
      }

      final response = await DioConfig().dio.patch(
        "${updatedUser.id}/",  // Use updatedUser.id here
        data: updatedUser.toJson(),
      );

      print("User updated: ${response.data}");
    } catch (e) {
      print("Error updating user: $e");
      Fluttertoast.showToast(msg: "Failed to update user");
    }
  }




}
