import 'package:app_example/app/modules/branch/model/branch_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/branch_repository.dart';
import 'branch_controller.dart';


class BranchState {
  final List<BranchModel>? listBranch;
  final bool isLoading;
  BranchState({this.listBranch, this.isLoading = true});
  BranchState copyWith({List<BranchModel>? listBranch, bool? isLoading}) {
    return BranchState(
        isLoading: isLoading ?? this.isLoading,
        listBranch: listBranch ?? this.listBranch);
  }
}


final branchRepositoryProvider = Provider<BranchRepository>((ref) {
  return BranchRepository();
});

final branchProvider = StateNotifierProvider<BranchController, BranchState>(
      (ref) => BranchController(ref.watch(branchRepositoryProvider)),
);
