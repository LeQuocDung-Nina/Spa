import 'package:app_example/app/modules/branch/model/branch_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/app_color.dart';

class BranchItemActive extends ConsumerWidget {
  const BranchItemActive( {required this.branchModel,
    Key? key,
  }) : super(key: key);

  final BranchModel branchModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: COLOR_BGITEMADD,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: COLOR_GRAY1.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0,1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/address.png',width: 45,)),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text(branchModel.namevi,style: const TextStyle(color: COLOR_D1,fontSize: 13),)),

                   Container(
                       padding: const EdgeInsets.symmetric(
                           vertical: 5, horizontal: 10),
                       margin: const EdgeInsets.only(left: 10),
                       decoration: BoxDecoration(
                         color: COLOR_WHITE,
                         borderRadius: BorderRadius.circular(5),
                       ),
                       child: const Text('Trụ sở chính',
                         style: TextStyle(color: COLOR_BLACK, fontSize: 9),)),
                ],
              ),
              const SizedBox(height: 10,),
              Text(branchModel.address,style: const TextStyle(color: COLOR_GRAY1,fontSize: 11),),
            ],
          )),
        ],
      ),
    );
  }
}
