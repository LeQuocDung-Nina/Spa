
import 'dart:io';

import 'package:app_example/app/modules/complain/model/complain_model.dart';
import 'package:app_example/app/modules/complain/provider/complain_state.dart';
import 'package:app_example/app/utils/formz/form_models/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import '../../../constants/app_ui.dart';
import '../../../utils/formz/formz.dart';
import '../../widgets/dialog/material_dialogs.dart';
import '../../widgets/loading/loading.dart';
import '../constants/app_style.dart';
import '../constants/app_color.dart';
import 'widget/complain_item.dart';


String selectedName = '';
String contentComplain = '';
final TextEditingController _selectedName = TextEditingController();
final TextEditingController _contentComplain = TextEditingController();


int viTri = 0;


class ComplainScreen extends ConsumerWidget {
  const ComplainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final complainList =  ref.watch(complainProvider.notifier);
    final state = ref.watch(complainProvider);
    ref.listen(complainProvider, (previous, next) {
      if (next.status == FormzStatus.submissionInProgress) {
        Loading(context).start();
      }
      if (next.status == FormzStatus.submissionSuccess) {
        Loading(context).stop();
        Dialogs.materialDialog(
          context: context,
          lottieBuilder: Lottie.asset(AppUI.animationIconSuccess),
          title: "Gửi thành công!",
          barrierDismissible: false,
          autoHide: Duration(seconds: 3),
        );
      }
      if (next.status == FormzStatus.submissionFailure) {
        Loading(context).stop();
        Dialogs.materialDialog(
          context: context,
          lottieBuilder: Lottie.asset(AppUI.animationIconError),
          title: next.errorMessage,
          barrierDismissible: false,
          autoHide: Duration(seconds: 3),
        );
      }
    });

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
              TextFormField(
                controller: _selectedName,
                readOnly: true,
                maxLines: 1,
                style: const TextStyle(color: COLOR_D1,fontSize: 11),
                decoration:  InputDecoration(
                  errorText: state.dichvu.invalid ? state.dichvu.error!.getError(context) : null,
                  suffixIcon: Icon(Icons.navigate_next,color: COLOR_D1,size: 15,),
                  hintText: 'Chọn dịch vụ',
                  hintStyle: TextStyle(color: COLOR_D1,fontSize: 11),
                ),
                onTap: () {
                  _showModalBottomSheet(context);
                },
                // onChanged: (value) {
                //   ref.read(complainProvider.notifier).onServiceChange(value);
                // },
              ),
              const SizedBox(height: 25,),
              const _BoxChatComplain(),
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
              onPressed: () {
                contentComplain = _contentComplain.text;
                if (state.status == FormzStatus.valid ||
                    state.status == FormzStatus.submissionFailure) {
                  print("đã kết nối");
                  complainList.addComplain(ComplainModel(content: contentComplain, dichvu: selectedName));
                  Navigator.pop(context);
                }else{
                  print("lỗi kết nối");
                }

                // addComplain
              },
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

  final selectedIndex = ValueNotifier<int>(0);


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
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            //provider
            final stateService = ref.watch(serviceComplainProvider);



            return ListView.builder(
              itemCount: (stateService.listService?.length) != null ? stateService.listService!.length + 1: 0,
              itemBuilder: (BuildContext context, int index) {

                if (index == 0) {
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        const Text('Chọn dịch vụ',style: TextStyle(fontSize: 16,color: COLOR_BG,fontWeight: FontWeight.w500),),
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                                child: const Icon(Icons.cancel_outlined)))
                      ],
                    ),
                  );
                } else {
                  return ValueListenableBuilder<int>(
                      valueListenable: selectedIndex,
                      builder: (BuildContext context, int value, Widget? child) {
                    return RadioListTile(
                      title: ComplainItem(namevi:stateService.listService![index - 1].namevi),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: index - 1,
                      groupValue: viTri,
                      onChanged: (int? value) {
                        selectedIndex.value = value!;
                        selectedName = stateService.listService![selectedIndex.value].namevi;
                        _selectedName.text = selectedName;
                        viTri = selectedIndex.value!;
                        selectedIndex.notifyListeners();
                        Navigator.pop(context);
                      },
                    );
                  },
                  );
                }
              },
            );
          },
        ),
      );
    },
  ).then((value) {
    // Handle the result here
    print('Selected option: $selectedName');
  });
}




class _BoxChatComplain extends ConsumerStatefulWidget {
  const _BoxChatComplain({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => __BoxChatComplainState();
}

class __BoxChatComplainState extends ConsumerState<_BoxChatComplain> {
  late File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(complainProvider);
    return Container(
      child: Stack(
        children: [
           TextField(
            style: const TextStyle(color: COLOR_D1,fontSize: 11),
            maxLines: 10,
            controller: _contentComplain,
            decoration:  InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              hintText: 'Mời bạn nhập thông tin phản hồi ...',
              hintStyle: TextStyle(color: COLOR_D1,fontSize: 11),

              errorText: state.content.invalid ? state.content.error!.getError(context) : null,
            ),
             onChanged: (value) {
               ref.read(complainProvider.notifier).onContentChange(value);
             },

             // thuộc tính TextField khác
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: getImage,
              icon: const Icon(Icons.image,color: COLOR_D1,),
            ),
          ),
        ],
      ),
    );
  }
}
