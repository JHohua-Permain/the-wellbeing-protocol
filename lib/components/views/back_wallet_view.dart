import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//useful: https://pub.dev/packages/clipboard

class WalletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Important! write down the words in order and\n keep safe. You won\'t be able to recover your\n account without it.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 40),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 40.0,
                    // mainAxisSpacing: 4,
                    children: List.generate(words.length, (index) {
                      return Center(
                        child: SelectText(word: words[index]),
                      );
                    }),
                  ),
                ),
                // RaisedButton.icon(
                // color: Colors.blue,
                Padding(
                  padding: const EdgeInsets.only(left: 90, bottom: 30),
                  child: Row(children: <Widget>[
                    Text("Copy to clipboard  "),
                    Icon(Icons.copy),
                  ]),
                )
              ],
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Color(0xFF801E48),
            clipBehavior: Clip.antiAlias,
            child: MaterialButton(
              minWidth: 218.0,
              height: 50,
              color: const Color(0xFFFFAD8B),
              child: new Text('Next',
                  style: new TextStyle(fontSize: 16.0, color: Colors.black)),
              onPressed: () {
                // return Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => TemplateScreen(
                //     appBarTitle: "Success",
                //     body: Sucess(),
                //     showBackArrow: false,
                //     showBottomBar: true,
                //   ),
                // ));
              },
            ),
          )
        ]),
      ),
    ])));
  }
}

class Word {
  const Word({this.title, this.number});
  final String number;
  final String title;
}

const List<Word> words = const <Word>[
  const Word(number: '1.', title: 'catalog'),
  const Word(number: '2.', title: 'uncover'),
  const Word(number: '3.', title: 'begin'),
  const Word(number: '4.', title: 'until'),
  const Word(number: '5.', title: 'volume'),
  const Word(number: '6.', title: 'output'),
  const Word(number: '7.', title: 'walk'),
  const Word(number: '8.', title: 'possible'),
  const Word(number: '9.', title: 'brass'),
  const Word(number: '10.', title: 'peace'),
  const Word(number: '11.', title: 'aunt'),
  const Word(number: '12.', title: 'green'),
];

class SelectText extends StatelessWidget {
  const SelectText({Key key, this.word}) : super(key: key);
  final Word word;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Text(word.number + ' ' + word.title);
  }
}
