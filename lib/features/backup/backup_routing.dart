import 'package:auto_route/auto_route.dart';
import 'package:the_wellbeing_protocol/features/backup/redux/backup_store_connectors.dart';

const List<MaterialRoute> backupRoutes = [
  MaterialRoute(
    name: 'BackupWalletPage',
    path: '/backup',
    page: BackupWalletConnector,
  ),
];
