import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/shop/shop_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';

class ShopItemDetailsScreen extends StatefulWidget {
  final ShopItemDetailsViewModel vm;

  ShopItemDetailsScreen(this.vm);

  @override
  _ShopItemDetailsScreenState createState() => _ShopItemDetailsScreenState();
}

class _ShopItemDetailsScreenState extends State<ShopItemDetailsScreen> {
  int _selectedCount = 1;
  late int _cost = _selectedCount * widget.vm.shopItem.cost;
  late String _selectedLocation = widget.vm.shop.locations[0];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Enter Details',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('Item'),
                      )
                    ],
                  ),
                  Row(children: <Widget>[
                    Text(
                      widget.vm.shopItem.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Text(
                          '${widget.vm.shopItem.cost.toString()} ${widget.vm.tokenSymbol}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  ])
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          'How many',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton<int>(
                          onChanged: _setCount,
                          hint: Text(_selectedCount.toString()),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 36,
                          isExpanded: true,
                          underline: SizedBox(),
                          items: List.generate(
                            widget.vm.shopItem.stock,
                            (index) => DropdownMenuItem(
                              value: index,
                              child: Text(index.toString()),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          'Where would you like to pick it up?',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: DropdownButton<String>(
                        hint: Text(_selectedLocation),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        underline: SizedBox(),
                        onChanged: _setLocation,
                        items: List.generate(
                          widget.vm.shop.locations.length,
                          (index) => DropdownMenuItem(
                            value: widget.vm.shop.locations[index],
                            child: Text(widget.vm.shop.locations[index]),
                          ),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 93),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Total:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '${_cost.toString()} ${widget.vm.tokenSymbol}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 34),
                      child: Container(
                        width: 218,
                        height: 43,
                        child: ElevatedButton(
                          onPressed: () {
                            widget.vm.checkout(
                              _selectedCount,
                              _selectedLocation,
                            );
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFFAD8B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _setCount(int? count) {
    setState(() {
      if (count != null) {
        _selectedCount = count;
        _cost = _selectedCount * widget.vm.shopItem.cost;
      }
    });
  }

  void _setLocation(String? location) {
    setState(() {
      if (location != null) _selectedLocation = location;
    });
  }
}
