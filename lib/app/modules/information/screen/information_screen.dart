
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import '../constants/app_style.dart';
import '../constants/app_color.dart';
import 'widget/information_screen.dart_item.dart';

class InformationScreen extends ConsumerWidget {
  const InformationScreen({
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
        title: const Text("Thông tin tài khoản",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            children: const[
              _AccountWidget(),
              SizedBox(height: 20,),
              _ListHistory(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AccountWidget extends ConsumerWidget {
  const _AccountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100), // Image border
            child: Image.asset('assets/images/account.png',width: 60,height: 60,),
          ),
          const SizedBox(width: 10,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Yen Thanh',style: TextStyle(color: COLOR_BG,fontSize: 20),),
              const SizedBox(height: 5,),
              const Text('0962.995.574',style: TextStyle(color: COLOR_BG,fontSize: 12),),
              const SizedBox(height: 5,),
              InkWell(
                onTap: () {

                },
                  child:  Row(
                    children: const [
                       Text('Thông tin tài khoản',style: TextStyle(color: COLOR_BLACK,fontSize: 11,fontWeight: FontWeight.bold),),
                      Icon(Icons.navigate_next,color: COLOR_BLACK,size: 15,),
                    ],
                  ),
              ),
            ],
          )),

        ],
      ),
    );
  }
}

class _ListHistory extends ConsumerWidget {
  const _ListHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/service');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Quản lý dịch vụ',style: titleHistory,),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const DottedLine(dashColor: COLOR_LINEDAS,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/treatment-history');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Lịch sử điều trị',style: titleHistory,),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const DottedLine(dashColor: COLOR_LINEDAS,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/booking-history');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Lịch sử đặt lịch',style: titleHistory),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const DottedLine(dashColor: COLOR_LINEDAS,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/payment-history');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Lịch sử thanh toán',style: titleHistory,),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const DottedLine(dashColor: COLOR_LINEDAS,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/album');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Hình ảnh điều trị',style: titleHistory,),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const DottedLine(dashColor: COLOR_LINEDAS,),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/branch');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Hệ thống chi nhánh',style: titleHistory,),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const DottedLine(dashColor: COLOR_LINEDAS,),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context.push('/complain');
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle,color: COLOR_BLACK,size: 8,),
                          SizedBox(width: 5,),
                          Text('Khiếu nại',style: titleHistory,),
                        ],
                      ),
                      const Icon(Icons.navigate_next,color: COLOR_BLACK,size: 18,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(onPressed: () {

              },
                style: ElevatedButton.styleFrom(
                  primary: COLOR_BG,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                ),
                child: const Text('Đăng xuất',style: TextStyle(fontSize: 14,color: COLOR_D2),),)
          ),
        ],
      ),
    );
  }
}




