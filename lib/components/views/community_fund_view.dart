import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/template_screen.dart';
import 'package:the_wellbeing_protocol/components/views/send_to_commu_fund.dart';
import 'package:the_wellbeing_protocol/widgets/amount_widget.dart';
import 'package:the_wellbeing_protocol/widgets/comon_button.dart';
import 'package:the_wellbeing_protocol/widgets/item_list_builder_widget.dart';

class CommunityFundView extends StatelessWidget {
  final List<Contributer> contributers = [
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c'),
    Contributer(name: 'Deepa', amount: '22 c')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: Center(child: Text('Total Contributed')),
          ),
          Amount(
            amount: '255',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: CommonButton(
                buttonName: 'Contribute',
                onButtonPressed: () {
                  Contributer contriNew =
                      new Contributer(amount: '34', name: 'Neha S');
                  return Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TemplateScreen(
                      appBarTitle: "Send to Community Fund",
                      showBackArrow: true,
                      body: SendToCommunityFund(contributerPassed: contriNew),
                      showBottomBar: false,
                    ),
                  ));
                }),
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 300, 10),
            child: Text(
              'Contributers',
              //textAlign: TextAlign.left,
            ),
          ),
          ItemListBuilder(
            itemBuilder: (context, index) {
              //Contact contact = contacts[index];
              Contributer contributer = contributers[index];

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      title: Text(contributer.name),
                      trailing: Text(contributer.amount),
                      leading: CircleAvatar(
                        child: Image.asset('assets/images/anom.png'),
                      ),
                      onTap: null),
                ],
              );
            },
            numberOfItems: contributers.length,
          )
        ],
        // Text('Contributers', style: TextStyle(),),
      ),
    );
  }
}

class Contributer extends StatelessWidget {
  final String name;
  final String amount;
  const Contributer({this.amount, this.name});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}