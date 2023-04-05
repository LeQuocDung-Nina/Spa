import 'package:go_router/go_router.dart';
import '../app/modules/album/layout_album.dart';
import '../app/modules/branch/layout_branch.dart';
import '../app/modules/complain/layout_complain.dart';
import '../app/modules/history/booking/layout_booking.dart';
import '../app/modules/history/payment/layout_payment.dart';
import '../app/modules/history/treatment/layout_treatment.dart';
import '../app/modules/information/layout_information.dart';
import '../app/modules/service/layout_service.dart';

final List<GoRoute> modulesRoutes = [
  // TODO: Danh sách GoRoute của các modules ở đây. Ví dụ: LayoutMain.goRoute(),
  // TODO: Thêm các GoRoute bên dưới...
  LayoutService.goRoute(),
  LayoutPaymentHistory.goRoute(),
  LayoutTreatmentHistory.goRoute(),
  LayoutBookingHistory.goRoute(),
  LayoutAlbum.goRoute(),
  LayoutBranch.goRoute(),
  LayoutComplain.goRoute(),
  LayoutInformation.goRoute(),

];