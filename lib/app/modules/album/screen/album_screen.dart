
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_color.dart';
import '../constants/app_style.dart';



class Albumcreen extends ConsumerWidget {
  const Albumcreen({
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
        title: const Text("Hình ảnh điều trị",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            children: const[

            ],
          ),
        ),
      ),
    );
  }
}
