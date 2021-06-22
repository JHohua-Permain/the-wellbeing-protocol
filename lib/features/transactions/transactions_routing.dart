import 'package:auto_route/annotations.dart';
import 'package:the_wellbeing_protocol/features/transactions/redux/transactions_store_connectors.dart';

const List<MaterialRoute> transactionRoutes = [
  MaterialRoute(
    name: 'SendToContactPage',
    path: '/contacts/:contactId',
    page: SendToContactConnector,
  ),
  MaterialRoute(
    name: 'SendToContactReviewPage',
    path: '/contacts/review',
    page: SendToContactReviewConnector,
  ),
  MaterialRoute(
    name: 'ShopItemDetailsPage',
    path: '/shops/:shopId/:itemId',
    page: ShopItemDetailsConnector,
  ),
  MaterialRoute(
    name: 'ShopCheckoutReviewPage',
    path: '/shops/review',
    page: ShopCheckoutReviewConnector,
  ),
  MaterialRoute(
    name: 'SendToCommunityFundPage',
    path: '/community/fund/contribute',
    page: SendToCommunityFundConnector,
  ),
  MaterialRoute(
    name: 'SendToCommunityFundReviewPage',
    path: '/community/fund/review',
    page: SendToCommunityFundReviewConnector,
  ),
  MaterialRoute(
    name: 'TransactionSuccessPage',
    path: '/hub/review/status',
    page: TransactionSuccessConnector,
  ),
];
