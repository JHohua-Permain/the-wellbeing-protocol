import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/template_screen.dart';
import 'package:the_wellbeing_protocol/components/views/send_to_commu_fund.dart';
import 'package:the_wellbeing_protocol/widgets/currency_widget.dart';
import 'package:the_wellbeing_protocol/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/components/views/item_list_builder_widget.dart';

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
          CurrencyWidget(
            amount: '255',
            tokenSymbol: 'CAN',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: CommonButton(
                label: 'Contribute',
                onPressed: () {
                  Contributer contriNew =
                      new Contributer(amount: '34', name: 'Neha S');
                  Navigator.of(context).push(MaterialPageRoute(
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
  const Contributer({required this.amount, required this.name});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}