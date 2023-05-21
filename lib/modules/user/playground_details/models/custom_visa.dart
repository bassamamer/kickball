class CustomVisa {
  final String cardNum;
  final String expireDate;
  final String vcc;

  const CustomVisa({
    required this.cardNum,
    required this.expireDate,
    required this.vcc,
  });

  static const List<CustomVisa> visaList = [
    CustomVisa(cardNum: "402400719999720", expireDate: "07/23", vcc: "108"),
    CustomVisa(cardNum: "448516423900724", expireDate: "04/27", vcc: "576"),
    CustomVisa(cardNum: "453972294832425", expireDate: "05/25", vcc: "159"),
  ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomVisa &&
          runtimeType == other.runtimeType &&
          cardNum == other.cardNum &&
          expireDate == other.expireDate &&
          vcc == other.vcc;

  @override
  int get hashCode => cardNum.hashCode ^ expireDate.hashCode ^ vcc.hashCode;
}
