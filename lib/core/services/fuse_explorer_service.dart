import 'dart:convert';

import 'package:http/http.dart';

class FuseExplorerService {
  final String baseUrl;
  final Client _client = Client();

  FuseExplorerService(this.baseUrl);

  Future<List<dynamic>> fetchAccountTransferData({
    required String accountAddress,
    String? tokenAddress,
    String sort = 'desc',
    int startBlock = 0,
  }) async {
    try {
      String query = tokenAddress == null
          ? '?module=account&action=tokentx&address=$accountAddress&startblock=$startBlock&sort=$sort'
          : '?module=account&action=tokentx&contractaddress=$tokenAddress&address=$accountAddress&startblock=$startBlock&sort=$sort';

      Map<String, dynamic> response = await get(query);
      List<dynamic> results = response['result'];
      List<dynamic> transfersData = [];
      for (var transferData in results) {
        print('Transfer Data: $transferData');

        int timeStamp = DateTime.fromMillisecondsSinceEpoch(
          int.parse(transferData['timeStamp']),
        ).millisecondsSinceEpoch *
            1000;

        String type = transferData["from"].toString().toLowerCase() ==
            accountAddress.toLowerCase()
            ? 'SEND'
            : 'RECEIVE';

        transfersData.add({
          'blockNumber': num.parse(transferData['blockNumber']),
          'txHash': transferData['hash'],
          'to': transferData['to'],
          'from': transferData["from"],
          'status': "CONFIRMED",
          'timestamp': timeStamp,
          'value': transferData['value'],
          'tokenAddress': transferData['contractAddress'],
          // 'tokenAddress': tokenAddress,
          'type': type,
        });
      }
      return transfersData;
    } catch (e) {
      throw 'Error! Get token transfers events failed for - address: $accountAddress --- $e';
    }
  }

  Future<dynamic> get(String endPoint) async {
    Uri uri = Uri.parse('$baseUrl$endPoint');
    Map<String, String> headers = {"Content-Type": 'application/json'};
    Response response = await _client.get(uri, headers: headers);
    // TODO: Validation.
    return json.decode(response.body);
  }
}
