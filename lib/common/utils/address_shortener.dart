String shortenAddress(String address, int desiredCharCount) {
  if (address.length <= desiredCharCount + 3) {
    return address;
  } else {
    String prefix = address.substring(0, 7);
    String suffix = address.substring(address.length - 4);
    return '$prefix...$suffix';
  }
}
