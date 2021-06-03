import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:the_wellbeing_protocol/models/community_entity.dart';

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
