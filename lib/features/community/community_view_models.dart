import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/core/models/community_entity.dart';

class CommunityFundViewModel extends Equatable {
  final String communityFund;
  final String tokenSymbol;
  final List<CommunityEntity> contributors;
  final VoidCallback pushContributeScreen;

  const CommunityFundViewModel({
    required this.communityFund,
    required this.tokenSymbol,
    required this.contributors,
    required this.pushContributeScreen,
  });

  @override
  List<Object?> get props => [
        communityFund,
        tokenSymbol,
        contributors,
      ];
}

class SendToCommunityFundViewModel extends Equatable {
  final String tokenSymbol;
  final ValueSetter<String> submitSendAmount;

  const SendToCommunityFundViewModel({
    required this.tokenSymbol,
    required this.submitSendAmount,
  });

  @override
  List<Object> get props => [tokenSymbol];
}

class SendToCommunityFundReviewViewModel extends Equatable {
  final String amount;
  final String tokenSymbol;
  final VoidCallback confirmTransfer;

  const SendToCommunityFundReviewViewModel({
    required this.amount,
    required this.tokenSymbol,
    required this.confirmTransfer,
  });

  @override
  List<Object> get props => [amount, tokenSymbol];
}
