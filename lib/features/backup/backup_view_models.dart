import 'package:equatable/equatable.dart';

class BackupWalletViewModel extends Equatable {
  final List<String> mnemonic;

  const BackupWalletViewModel({required this.mnemonic});

  @override
  List<Object?> get props => [mnemonic];
}
