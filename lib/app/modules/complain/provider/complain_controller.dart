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

  // thêm khiếu nại
  Future<void> addComplain(ComplainModel complain) async {
    try {
      // thực hiện gửi khiếu nại
      final result = await _complainRepository.postComplain(complain);

      if (result) {
        // nếu gửi khiếu nại thành công thì cập nhật lại danh sách khiếu nại
        final List<ComplainModel>? listComplainNew = await _complainRepository.getCurrentComplain();
        state = state.copyWith(listComplain: listComplainNew);
      } else {
        throw Exception('Failed to post complain');
      }
    } catch (e) {
      throw Exception('Failed to post complain: $e');
    }
  }
}
//---------------------------

final complainInputProvider =
StateNotifierProvider.autoDispose<ComplainInputController, ComplainInputState>((ref) {
  return ComplainInputController(ref);
});

class ComplainInputController extends StateNotifier<ComplainInputState> {

  final Ref ref;

  ComplainInputController(this.ref) : super(const ComplainInputState()) {
    init();
  }

  init() async {

  }

  void onServiceChange(String value) {
    final dichvu = TextInput.dirty(value);
    state = state.copyWith(
      dichvu: dichvu,
      status: Formz.validate([dichvu, state.dichvu]),
    );
  }
  void onContentChange(String value) {
    print(value);
    final content = TextInput.dirty(value);
    state = state.copyWith(
      content: content,
      status: Formz.validate([content, state.content]),
    );
  }
}



