

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/service_item_model.dart';
import '../repository/service_repository.dart';
import 'service_state.dart';

class ServiceController extends StateNotifier<ServiceState> {
  late final ServiceRepository _serviceRepository;

  ServiceController(this._serviceRepository) : super(ServiceState()) {
    _init();
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final List<ServiceModel>? listServiceNew = await _serviceRepository.getCurrentService();
    state = state.copyWith(isLoading: false, listService: listServiceNew);
  }
}

