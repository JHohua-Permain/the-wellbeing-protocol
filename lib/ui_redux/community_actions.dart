import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/redux/app_redux.dart';

AppThunkAction fetchMembers() {
  //TODO: Finish Implementation.
  // In the meantime, member fetching and setting handled by middleware.
  return (store, services) async {
    store.dispatch(SetMembers([]));
  };
}
