import 'package:app_example/app/modules/branch/model/branch_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/branch_repository.dart';
import 'branch_state.dart';


class BranchController extends StateNotifier<BranchState> {
  late final BranchRepository _branchRepository;

  BranchController(this._branchRepository) : super(BranchState()) {
    _init();
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final List<BranchModel>? listBranchNew = await _branchRepository.getCurrentBranch();
    state = state.copyWith(isLoading: false, listBranch: listBranchNew);
  }
}

