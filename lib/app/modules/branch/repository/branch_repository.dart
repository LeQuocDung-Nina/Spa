import 'dart:convert';
import 'package:dio/dio.dart';
import '../../../constants/api_url.dart';
import '../../../core/service/api/dio_client.dart';
import '../model/branch_model.dart';


class BranchRepository {
  final _apiClient = DioClient(Dio());

  //danh sách chi nhanh
  Future<List<BranchModel>?> getCurrentBranch() async {
    List<BranchModel>? listBrand = [];
    try {
      final response = await _apiClient.get(ApiUrl.bookingAddress);
      if (response.statusCode == 200) {
        final mapResponse = jsonDecode(response.data);
        for (var branch in mapResponse) {
          listBrand.add(BranchModel.fromJson(branch));
        }
        return listBrand;
      } else {
        throw Exception('Failed to load branch');
      }
    } catch (e) {
      throw Exception('Failed to load branch: $e');
    }
  }
}
