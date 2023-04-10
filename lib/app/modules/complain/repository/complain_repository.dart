import 'dart:convert';
import 'dart:io';

import 'package:app_example/app/modules/complain/model/complain_model.dart';
import 'package:app_example/app/modules/complain/model/service_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/api_url.dart';
import '../../../core/service/api/dio_client.dart';
import 'package:dio/dio.dart';


final complainRepoProvider = Provider<ComplainRepository>(
      (_) => ComplainRepository(),
);

class ComplainRepository {
  final _apiClient = DioClient(Dio());

  //lấy ra tên dịch vụ
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

  //get Khiếu nại
  Future<List<ComplainModel>?> getCurrentComplain() async {
    List<ComplainModel>? listComplain = [];
    try {
      final response = await _apiClient.get(ApiUrl.serviceComplain);

      if (response.statusCode == 200) {
        final mapResponse = jsonDecode(response.data);
        for (var service in mapResponse) {
          listComplain.add(ComplainModel.fromJson(service));
        }
        return listComplain;
      } else {
        throw Exception('Failed to load Complain');
      }
    } catch (e) {
      throw Exception('Failed to load Complain: $e');
    }
  }
  //post khiếu nại
  Future<bool> postComplain(ComplainModel complain, File filePhoto) async {
    try {
      FormData formData;
      if (filePhoto.path != '') {
        final MultipartFile photo = await MultipartFile.fromFile(filePhoto.path, filename: "file_attach.png");
        formData = FormData.fromMap({
          'fullname': "Le quoc dung",
          'dichvu': complain.dichvu,
          'content': complain.content,
          "file_attach": photo,
          // thêm các trường khác tương ứng với ComplainModel
        });
      } else {
        formData = FormData.fromMap({
          'fullname': "Le quoc dung",
          'dichvu': complain.dichvu,
          'content': complain.content,
          // thêm các trường khác tương ứng với ComplainModel
        });
      }

      final response = await _apiClient.post(ApiUrl.addComplain, data: formData);

      if (response.statusCode == 201) {
        return true;
      } else {
        throw Exception('Failed to post service');
      }
    } catch (e) {
      throw Exception('Failed to post service: $e');
    }
  }




}
