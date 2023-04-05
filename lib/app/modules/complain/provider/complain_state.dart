import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/service_model.dart';
import 'complain_provider.dart';

class ServiceState {
  final List<ServiceModel>? listService;
  final bool isLoading;

  ServiceState({this.listService, this.isLoading = true});
  ServiceState copyWith({List<ServiceModel>? listService, bool? isLoading}) {
    return ServiceState(
        isLoading: isLoading ?? this.isLoading,
        listService: listService ?? this.listService);
  }
}
final slideshowProvider = StateNotifierProvider<ServiceController, ServiceState>(
      (ref) => ServiceController(),
);