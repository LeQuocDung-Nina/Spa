import '../model/service_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'complain_state.dart';

class ServiceController extends StateNotifier<ServiceState> {
  ServiceController() : super(ServiceState()) {
    _init();
  }
  _init() async {
    state = state.copyWith(isLoading: true);
    // final List<ServiceModel>? listServiceNew = await ServiceComplainService.instance.getSlideshows();
    // state = state.copyWith(isLoading: false, listService: listServiceNew);
  }
}