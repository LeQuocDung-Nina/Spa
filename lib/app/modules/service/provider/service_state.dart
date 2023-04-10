import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/service_item_model.dart';
import '../repository/service_repository.dart';
import 'service_controller.dart';

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


final serviceRepositoryProvider = Provider<ServiceRepository>((ref) {
  return ServiceRepository();
});

final serviceComplainProvider = StateNotifierProvider<ServiceController, ServiceState>(
      (ref) => ServiceController(ref.watch(serviceRepositoryProvider)),
);
