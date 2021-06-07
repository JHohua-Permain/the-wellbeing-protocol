import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/community.dart';
import 'package:the_wellbeing_protocol/redux/features/shop/shop_actions.dart';

final List<Reducer<Community>> Function() newShopReducers = () => [
      TypedReducer<Community, CompleteFetchingShops>(fetchShopsReducer),
    ];

Community fetchShopsReducer(Community state, CompleteFetchingShops action) {
  return state.copyWith(shops: action.shops);
}
