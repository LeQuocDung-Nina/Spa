import 'package:app_example/app/modules/complain/model/complain_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/formz/form_models/text_input.dart';
import '../../../utils/formz/formz.dart';
import '../model/service_model.dart';
import '../repository/complain_repository.dart';
import 'complain_controller.dart';

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


final complainRepositoryProvider = Provider<ComplainRepository>((ref) {
  return ComplainRepository();
});

final serviceComplainProvider = StateNotifierProvider<ServiceController, ServiceState>(
      (ref) => ServiceController(ref.watch(complainRepositoryProvider)),
);

//Khiếu nại
class ComplainState  {
  final List<ComplainModel>? listComplain;
  final bool isLoading;
  ComplainState({this.listComplain, this.isLoading = true});
  ComplainState copyWith({List<ComplainModel>? listComplain, bool? isLoading}) {
    return ComplainState(
        isLoading: isLoading ?? this.isLoading,
        listComplain: listComplain ?? this.listComplain);
  }
}
// final complainMRepositoryProvider = Provider<ComplainRepository>((ref) {
//   return ComplainRepository();
// });

final complainProvider = StateNotifierProvider<ComplainController, ComplainState>(
      (ref) => ComplainController(ref.watch(complainRepositoryProvider)),
);


//-----------------------------------------------------------------------

class ComplainInputState extends Equatable {
  final TextInput content;
  final TextInput dichvu;
  final FormzStatus status;
  final String? errorMessage;

  const ComplainInputState({
    this.content = const TextInput.pure(),
    this.dichvu = const TextInput.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage = '',
  });

  ComplainInputState copyWith({
    TextInput? content,
    TextInput? dichvu,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return ComplainInputState(
      dichvu: dichvu ?? this.dichvu,
      content: content ?? this.content,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [content, dichvu, status, errorMessage!];
}

