AccountModel testAccount = AccountModel("Bob", "123 Fake St", "0123456789");

class AccountModel {
  String name;
  final String publicAddress;
  final String phoneNum;

  AccountModel(this.name, this.publicAddress, this.phoneNum);
}