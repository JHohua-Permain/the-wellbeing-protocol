import 'package:the_wellbeing_protocol/common/redux/common_utils.dart';
import 'package:the_wellbeing_protocol/core/models/token.dart';

// TODO: Proper implementation.
AppThunkAction sendTokens(String receiverAddress, String amount) {
  return (store, services) async {
    String walletAddress = store.state.user.walletAddress!;
    Token currentToken = store.state.community.homeToken!;
    String tokenAddress = currentToken.address;
    num tokensAmount = num.parse(amount);
    await services.fuseAPIService.tokenTransfer(
      services.fuseNetworkService,
      walletAddress,
      tokenAddress,
      receiverAddress,
      tokensAmount,
    );
  };
}
