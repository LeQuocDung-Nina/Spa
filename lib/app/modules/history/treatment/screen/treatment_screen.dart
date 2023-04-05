
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../service/constants/app_color.dart';
import '../../../service/constants/app_style.dart';
import 'widget/treatment_history_item.dart';

class TreatmentHistoryScreen extends ConsumerWidget {
  const TreatmentHistoryScreen({
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
        title: const Text("Lịch sử điều trị",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            children: const[
              _ListTreatmentHistory(),
            ],
          ),
        ),
      ),
    );
  }
}


// Danh sách lịch sử thanh toán
class _ListTreatmentHistory extends ConsumerWidget {
  const _ListTreatmentHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlignedGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 30,
      crossAxisCount: 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 0,
      itemBuilder: (context, index) => TreatmentHistoryItem(),
    );
  }
}