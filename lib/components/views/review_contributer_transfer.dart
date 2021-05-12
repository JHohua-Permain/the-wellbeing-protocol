import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';
import 'package:the_wellbeing_protocol/components/views/success.dart';
import 'package:the_wellbeing_protocol/widgets/review_transfer_widget.dart';
import 'community_fund_view.dart';

class ReviewContributerTransfer extends StatelessWidget {
  final String confirmAmount;
  final Contributer contributer;
  const ReviewContributerTransfer({this.confirmAmount, this.contributer});

  Row contributerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            child: Image.asset('assets/images/anom.png'),
            backgroundColor: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contributer.name),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReviewTransferWidget(
      confirmAmount: confirmAmount,
      itemRow: contributerRow(),
      passedButtonName: 'Send',
      buttonFunction: () {
        return Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TemplateScreen(
            appBarTitle: "Success",
            body: Success(),
            redirectToView: true,
            showBackArrow: false,
            showBottomBar: true,
          ),
          
        )
        
        );
       
      },
    );
  }
}
