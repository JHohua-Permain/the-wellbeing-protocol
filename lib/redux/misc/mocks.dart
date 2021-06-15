import 'package:faker/faker.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';
import 'package:the_wellbeing_protocol/core/models/shop_item.dart';
import 'package:the_wellbeing_protocol/core/state/app_state.dart';
import 'package:the_wellbeing_protocol/features/community/redux/community_actions.dart';
import 'package:the_wellbeing_protocol/features/shop/redux/shop_actions.dart';

dynamic mockInjectorMiddleware(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) {
  if (action is FetchMembers) {
    store.dispatch(CompleteFetchingMembers(AppMocks().mockMembers));
  } else if (action is FetchShops) {
    store.dispatch(CompleteFetchingShops(AppMocks().mockShops));
  } else {
    return next(action);
  }
}

class AppMocks {
  static AppMocks? _appMocks;
  late final List<CommunityMember> mockMembers;
  late final List<CommunityShop> mockShops;

  factory AppMocks() {
    if (_appMocks != null) return _appMocks!;
    return _appMocks =  AppMocks._();
  }

  AppMocks._() {
    mockMembers = mockCommunityMembers();
    mockShops = mockCommunityShops();
  }

  static List<CommunityMember> mockCommunityMembers() {
    Faker faker = Faker();

    return List.generate(
      10,
      (index) => CommunityMember(
        walletAddress: '',
        displayName: faker.person.name(),
        communityFundContribution: faker.randomGenerator.integer(10),
      ),
    );
  }

  static List<CommunityShop> mockCommunityShops() {
    Faker faker = Faker();

    return List.generate(
      10,
      (index) => CommunityShop(
        walletAddress: '',
        displayName: faker.food.restaurant(),
        items: mockShopItems(),
        locations: mockShopLocations(),
      ),
    );
  }

  static List<ShopItem> mockShopItems() {
    Faker faker = Faker();

    return List.generate(
      faker.randomGenerator.integer(10),
      (index) => ShopItem(
        name: faker.food.dish(),
        cost: faker.randomGenerator.integer(10),
        stock: faker.randomGenerator.integer(10),
      ),
    );
  }

  static List<String> mockShopLocations() {
    Faker faker = Faker();

    return List.generate(
      faker.randomGenerator.integer(3),
      (index) => faker.address.streetAddress(),
    );
  }
}
