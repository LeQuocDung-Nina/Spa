import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/api_url.dart';
import '../../../core/service/api/dio_client.dart';
import 'package:dio/dio.dart';
import '../model/service_item_model.dart';


final serviceRepoProvider = Provider<ServiceRepository>(
      (_) => ServiceRepository(),
);

class ServiceRepository {
  final _apiClient = DioClient(Dio());

  //lấy dịch vụ
  Future<List<ServiceModel>?> getCurrentService() async {
    List<ServiceModel>? listService = [];
    try {
      final response = await _apiClient.get(ApiUrl.serviceComplain);

      if (response.statusCode == 200) {
        final mapResponse = jsonDecode(response.data);
        for (var service in mapResponse) {
          listService.add(ServiceModel.fromJson(service));
        }
        return listService;
      } else {
        throw Exception('Failed to load services');
      }
    } catch (e) {
      throw Exception('Failed to load services: $e');
    }
  }
}
