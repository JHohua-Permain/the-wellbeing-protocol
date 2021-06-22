import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/app_hub.dart';
import 'package:the_wellbeing_protocol/features/backup/backup_routing.dart';
import 'package:the_wellbeing_protocol/routing/auth_guard.dart';
import 'package:the_wellbeing_protocol/common/widgets/progress_dialog.dart';
import 'package:the_wellbeing_protocol/features/authentication/auth_routing.dart';
import 'package:the_wellbeing_protocol/features/hub/hub_routing.dart';
import 'package:the_wellbeing_protocol/features/transactions/transactions_routing.dart';

@MaterialAutoRouter(
  routes: [
    ...authRoutes,
    ...transactionRoutes,
    ...backupRoutes,
    MaterialRoute(
      name: 'AppHubRoute',
      path: '/hub',
      page: AppHub,
      guards: [AuthGuard],
      children: [
        walletRouter,
        shopRouter,
        communityFundRouter,
      ],
    ),
    CustomRoute(
      name: 'ProgressPopup',
      page: ProgressDialog,
      fullscreenDialog: true,
      opaque: false,
    ),
  ],
)
class $AppRouter {}
