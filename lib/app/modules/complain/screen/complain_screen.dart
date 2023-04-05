
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_style.dart';
import '../constants/app_color.dart';
import 'widget/complain_item.dart';

class ComplainScreen extends ConsumerWidget {
  const ComplainScreen({
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
        title: const Text("Khiếu nại",style: titleMain,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: pdApp,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Dịch vụ của bạn',style: TextStyle(color: COLOR_D1,fontSize: 15,fontWeight: FontWeight.w400),),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  _showModalBottomSheet(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration:  BoxDecoration(
                    border: Border.all(color: COLOR_Line,width: 1),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      Text('Chọn dịch vụ',style: TextStyle(color: COLOR_D1,fontSize: 11),),
                      Icon(Icons.keyboard_arrow_down,color: COLOR_D1,size: 15,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              const _boxChatComplain(),
              const SizedBox(height: 25,),
              const Text('Lưu ý',style: TextStyle(color: COLOR_D1,fontSize: 15,fontWeight: FontWeight.w400),),
              const SizedBox(height: 15,),
              const Text('Bạn nên chọn đúng dịch vụ để chúng tôi đánh giá chính xác các phản hồi của bạn ạ!',style: TextStyle(color: COLOR_D1,fontSize: 11,fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: () {  },
              style: ElevatedButton.styleFrom(
                primary: COLOR_BGBUTTON1,
                onPrimary: COLOR_TIME,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )
              ),
              child:  const Text('Hủy',style: TextStyle(color: COLOR_TITLEBUTON),),
            )),
            const SizedBox(width: 20,),
            Expanded(child: ElevatedButton(
              onPressed: () {  },
              style: ElevatedButton.styleFrom(
                  primary: COLOR_BGTIME1,
                  onPrimary: COLOR_TIME,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
              ),
              child:  const Text('Gửi',style: TextStyle(color: COLOR_WHITE),),
            )),
          ],
        ),
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  List<String> items = ['Dịch vụ phun xăm', 'Dịch vụ tẩy trắng da', 'Dịch vụ điều trị nám', 'Điều trị gia xạm', 'Điều trị nếp nhăng'];
  int selectedIndex = -1;

  showModalBottomSheet(
    context: context,
    shape:const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.0),
        topRight: Radius.circular(50.0),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        padding:const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: items.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    const Text('Chọn dịch vụ',style: TextStyle(fontSize: 16,color: COLOR_BG,fontWeight: FontWeight.w500),),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                        child: const Icon(Icons.cancel_outlined))
                  ],
                ),
              );
            } else {
              return RadioListTile(
                title: ComplainItem(namevi: items[index - 1]),
                controlAffinity: ListTileControlAffinity.trailing,
                value: index - 1,
                groupValue: selectedIndex,
                onChanged: (int? value) {
                  //Kiểm tra bằng provider
                },
              );
            }
          },
        ),
      );
    },
  ).then((value) {
    // Handle the result here
    print('Selected option: $value');
  });
}

class _boxChatComplain extends ConsumerWidget {
  const _boxChatComplain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Stack(
        children: [
            const TextField(
            style: TextStyle(color: COLOR_D1,fontSize: 11),
            maxLines: 10,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              hintText: 'Mời bạn nhập thông tin phản hồi ...',
              hintStyle: TextStyle(color: COLOR_D1,fontSize: 11),

            ),
            // thuộc tính TextField khác
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                // Xử lý sự kiện khi người dùng nhấn vào IconButton
              },
              icon: const Icon(Icons.image,color: COLOR_D1,),
            ),
          ),
        ],
      ),
    );
  }
}
