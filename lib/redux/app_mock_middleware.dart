import 'package:faker/faker.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/shop_item.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/features/hub/redux/hub_actions.dart';

class AppMockInjectorMiddleware implements MiddlewareClass<AppState> {
  final AppMocks appMocks = AppMocks();

  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is FetchMembers) {
      store.dispatch(SetMembers(appMocks.mockMembers));
    } else if (action is FetchShops) {
      store.dispatch(SetShops(appMocks.mockShops));
    } else {
      return next(action);
    }
  }
}

class AppMocks {
  final Faker faker = Faker();
  late final List<CommunityMember> mockMembers = _mockCommunityMembers(faker);
  late final Map<String, CommunityShop> mockShops = _mockCommunityShops(faker);

  List<CommunityMember> _mockCommunityMembers(Faker faker) {
    return List.generate(
      10,
      (index) => CommunityMember(
        walletAddress: index.toString(),
        displayName: faker.person.name(),
        communityFundContribution: faker.randomGenerator.integer(10),
      ),
    );
  }

  Map<String, CommunityShop> _mockCommunityShops(Faker faker) {
    return Map.fromIterable(
      List<String>.generate(10, (index) => index.toString()),
      key: (walletAddress) => walletAddress,
      value: (walletAddress) => CommunityShop(
        walletAddress: walletAddress,
        displayName: faker.food.restaurant(),
        items: _mockShopItems(faker),
        locations: _mockShopLocations(faker),
      ),
    );
  }

  Map<String, ShopItem> _mockShopItems(Faker faker) {
    return Map.fromIterable(
      List<ShopItem>.generate(
        faker.randomGenerator.integer(10),
        (index) => ShopItem(
          id: index.toString(),
          name: faker.food.dish(),
          cost: faker.randomGenerator.integer(10),
          stock: faker.randomGenerator.integer(10),
        ),
      ),
      key: (shopItem) => shopItem.id,
      value: (shopItem) => shopItem,
    );
  }

  List<String> _mockShopLocations(Faker faker) {
    return List.generate(
      faker.randomGenerator.integer(3, min: 1),
      (index) => faker.address.streetAddress(),
    );
  }
}
