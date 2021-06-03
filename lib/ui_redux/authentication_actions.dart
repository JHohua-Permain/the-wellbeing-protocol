class StartDataWipe {
  const StartDataWipe();
}

class StartLogin {
  final String phoneNum;

  const StartLogin(this.phoneNum);
}

class StartReAuthentication {
  const StartReAuthentication();
}

class StartRestore {
  final String mnemonic;

  const StartRestore(this.mnemonic);
}

class StartVerification {
  final String phoneNum;
  final String verificationCode;

  const StartVerification(this.phoneNum, this.verificationCode);
}
