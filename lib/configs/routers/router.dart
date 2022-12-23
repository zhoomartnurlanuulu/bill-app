import 'package:auto_route/auto_route.dart';
import 'package:billapp/features/bill/presentation/pages/bill_screen/bill_screen.dart';
import 'package:billapp/features/bill/presentation/pages/bill_screen_2/bill_screen_without_scan.dart';

import '../../features/bill/presentation/pages/main_screen/main_screen.dart';
import '../../features/bill/presentation/pages/result_screen/result_screen.dart';
import '../../features/bill/presentation/pages/scan_screen/scan_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
    ),
    AutoRoute(
      page: BillScreen,
    ),
    AutoRoute(
      page: ScanScreen,
      initial: true,
    ),
    AutoRoute(
      page: ResultScreen,
    ),
    AutoRoute(
      page: BillScreenWithOutScan,
    ),
  ],
)
class $AppRouter {}
