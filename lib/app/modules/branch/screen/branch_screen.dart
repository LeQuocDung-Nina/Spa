
import 'package:app_example/app/modules/branch/model/branch_model.dart';
import 'package:app_example/app/modules/branch/provider/branch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../constants/app_style.dart';
import '../constants/app_color.dart';
import 'widget/branch_history_item.dart';
import 'widget/branch_history_item_active.dart';

class BranchScreen extends ConsumerWidget {
  const BranchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: COLOR_BG,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: COLOR_D1,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgapp.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text("Hệ thống chi nhánh",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            children: const[
              _ListBranch(),
            ],
          ),
        ),
      ),
    );
  }
}

//Danh sách chi nhánh
class _ListBranch extends ConsumerWidget {
  const _ListBranch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final branchState = ref.watch(branchProvider);
    // bool isFirstItem = true;
    return (branchState.listBranch?.length != null) ?
    AlignedGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: branchState.listBranch?.length,
      crossAxisCount: 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 0,
      controller: ScrollController(initialScrollOffset: 0.0),
      itemBuilder: (context, index) {
        if (index == 0) {
          // bool isFirstItem = false;
          return BranchItemActive(
            branchModel: BranchModel(
              namevi: branchState.listBranch![index].namevi,
              address: branchState.listBranch![index].address,
            ),
          );
        } else {
          return BranchItem(
            branchModel: BranchModel(
              namevi: branchState.listBranch![index].namevi,
              address: branchState.listBranch![index].address,
            ),
          );
        }
      },
    ):const Center(child: Text('Chưa có chi nhánh',style: TextStyle(color: COLOR_D1),));
  }
}
