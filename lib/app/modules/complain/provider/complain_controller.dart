import '../../../utils/formz/form_models/text_input.dart';
import '../../../utils/formz/formz.dart';
import '../model/complain_model.dart';
import '../model/service_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/complain_repository.dart';
import 'complain_state.dart';

class ServiceController extends StateNotifier<ServiceState> {
  late final ComplainRepository _complainRepository;

  ServiceController(this._complainRepository) : super(ServiceState()) {
    _init();
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final List<ServiceModel>? listServiceNew = await _complainRepository.getCurrentService();
    state = state.copyWith(isLoading: false, listService: listServiceNew);
  }
}

// Complain
class ComplainController extends StateNotifier<ComplainState> {
  late final ComplainRepository _complainRepository;

  ComplainController(this._complainRepository) : super(ComplainState()) {
    _init();
  }

  _init() async {
    // khởi tạo danh sách khiếu nại
    final List<ComplainModel>? listComplainNew = await _complainRepository.getCurrentComplain();
    state = state.copyWith(isLoading: false, listComplain: listComplainNew);
  }

  // Kiểm tra input
  // void onServiceChange(String value) {
  //   final dichvu = TextInput.dirty(value);
  //   print("object:$dichvu");
  //   state = state.copyWith(
  //     dichvu: dichvu,
  //     status: Formz.validate([dichvu, state.content]),
  //   );
  // }
  void onContentChange(String value) {
    final content = TextInput.dirty(value);
    print("object:$content");
    state = state.copyWith(
      content: content,
      status: Formz.validate([content]),
    );
  }

  Future<void> addComplain(ComplainModel complain) async {
    state = state.copyWith(status: FormzStatus.submissionInProgress);
    if (Formz.validate([state.content]) == FormzStatus.invalid) {
      state = state.copyWith(status: Formz.validate([state.content]));
      return;
    }
    try {
      final result = await _complainRepository.postComplain(complain);
      if (result) {
        final List<ComplainModel>? listComplainNew = await _complainRepository.getCurrentComplain();
        state = state.copyWith(listComplain: listComplainNew,status: FormzStatus.submissionSuccess);
      } else {
        state = state.copyWith(status: FormzStatus.submissionFailure);
        throw Exception('Failed to post complain');
      }
    } catch (e) {
      state = state.copyWith(status: FormzStatus.submissionFailure, errorMessage: e.toString());
      throw Exception('Failed to post complain: $e');
    }
  }


}

//---------------------------


