import 'package:auto_route/annotations.dart';
import 'package:the_wellbeing_protocol/features/transactions/redux/transactions_store_connectors.dart';

const List<MaterialRoute> transactionRoutes = [
  MaterialRoute(
    name: 'SendToContactPage',
    path: '/contacts/:contactId',
    page: SendToContactConnector,
  ),
  MaterialRoute(
    name: 'SendToCommunityFundPage',
    path: '/community/fund/contribute',
    page: SendToCommunityFundConnector,
  ),
  MaterialRoute(
    name: 'ShopItemDetailsPage',
    path: '/shops/:shopId/:itemId',
    page: ShopItemDetailsConnector,
  ),
];
