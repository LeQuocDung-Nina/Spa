import 'package:app_example/app/modules/service/constants/app_color.dart';
import 'package:app_example/app/modules/service/screen/widgets/service_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../constants/app_style.dart';


class ServiceScreen extends ConsumerWidget {
  const ServiceScreen({
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
        title: const Text("Quản lý dịch vụ",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            children: const[
              _TitleService(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TitleService extends ConsumerStatefulWidget {
  const _TitleService({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __TitleServiceState();

}

class __TitleServiceState extends ConsumerState<_TitleService> {
  int _currentIndex = 0;
  bool _isVisibleTab1 = true;
  bool _isVisibleTab2 = false;

  void _onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
      _isVisibleTab1 = _currentIndex == 0;
      _isVisibleTab2 = _currentIndex == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 2,
          child: TabBar(
            dragStartBehavior: DragStartBehavior.start,
            labelColor: COLOR_D2,
            labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            unselectedLabelColor: COLOR_D1,
            indicator:  const BoxDecoration(

              border: Border(
                top: BorderSide(
                    color: COLOR_D2,
                    width: 2.0
                ),
              ),
            ),
            onTap: (index) {
              setState(() {
                _onTabChanged(index);
              });
            },
            tabs: [
              Container(padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const Tab(text: 'Gói của bạn')),
              Container(padding:const EdgeInsets.symmetric(vertical: 5),
                  child: const Tab(text: 'Dịch vụ chưa dùng')),

            ],
          ),
        ),
        const SizedBox(height: 10,),
        IndexedStack(
          alignment: Alignment.centerLeft,
          index: _currentIndex,
          children: [
            Visibility(
              visible: _isVisibleTab1,
              child: Column(
                children:const[
                  _MyService(),
                ],
              ),
            ),
            Visibility(
              visible: _isVisibleTab2,
              child: Column(
                children: const [
                  _UnusedService(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//Dịch vụ của bạn
class _MyService extends ConsumerWidget {
  const _MyService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlignedGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      crossAxisCount: 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 0,
      itemBuilder: (context, index) => ServiceItem(),
      // itemBuilder: (context, index) => Container(),
    );
  }
}
// Dịch vụ chưa dùng
class _UnusedService extends ConsumerWidget {
  const _UnusedService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlignedGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      crossAxisCount: 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 0,
      itemBuilder: (context, index) => const ServiceItem(),
      // itemBuilder: (context, index) => Container(),
    );
  }
}
