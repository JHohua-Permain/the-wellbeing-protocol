import 'package:faker/faker.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';

_AppMocks _mocks = _AppMocks.generate();

dynamic mockInjectorMiddleWare(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) {
  if (action is SetMembers && action.members.isEmpty) {
    return store.dispatch(SetMembers(_mocks.mockMembers));
  } else if (action is SetShops && action.shops.isEmpty) {
    return store.dispatch(SetShops(_mocks.mockShops));
  } else {
    return next(action);
  }
}

class _AppMocks {
  final List<CommunityMember> mockMembers;
  final List<CommunityShop> mockShops;

  _AppMocks(this.mockMembers, this.mockShops);

  static _AppMocks generate() {
    Faker faker = Faker();

    // Mock members.
    List<CommunityMember> mockMembers = List.generate(
      10,
      (index) => CommunityMember(
        walletAddress: '',
        displayName: faker.person.name(),
        communityFundContribution: faker.randomGenerator.integer(10),
      ),
    );

    // Mock shops.
    List<CommunityShop> mockShops = List.generate(
      10,
      (index) => CommunityShop(
        walletAddress: '',
        displayName: faker.company.name(),
      ),
    );

    mockShops.insert(
      0,
      CommunityShop(walletAddress: '', displayName: 'Fruit & Vegetable Co-op'),
    );

    return _AppMocks(mockMembers, mockShops);
  }
}
