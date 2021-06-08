import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/models/community.dart';
import 'package:the_wellbeing_protocol/features/shop/redux/shop_actions.dart';

final List<Reducer<Community>> Function() newShopReducers = () => [
      TypedReducer<Community, CompleteFetchingShops>(fetchShopsReducer),
    ];

Community fetchShopsReducer(Community state, CompleteFetchingShops action) {
  return state.copyWith(shops: action.shops);
}
