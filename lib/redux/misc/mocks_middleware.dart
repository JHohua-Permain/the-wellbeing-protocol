import 'package:faker/faker.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';

dynamic mockInjectorMiddleware(
  Store<AppState> store,
  action,
  NextDispatcher next,
) {
  if (action is SetMembers && action.members.isEmpty) {
    return store.dispatch(SetMembers(AppMocks().mockMembers));
  } else if (action is SetShops && action.shops.isEmpty) {
    return store.dispatch(SetShops(AppMocks().mockShops));
  } else {
    return next(action);
  }
}

class AppMocks {
  static AppMocks? _appMocks;
  final List<CommunityMember> mockMembers;
  final List<CommunityShop> mockShops;

  factory AppMocks() {
    if (_appMocks != null) return _appMocks!;

    List<CommunityMember> mockMembers = mockCommunityMembers();
    List<CommunityShop> mockShops = mockCommunityShops();

    return AppMocks._(mockMembers, mockShops);
  }

  AppMocks._(this.mockMembers, this.mockShops);

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
        displayName: faker.company.name(),
      ),
    );
  }
}
