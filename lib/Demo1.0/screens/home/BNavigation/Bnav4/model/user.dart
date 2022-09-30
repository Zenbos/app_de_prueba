class User {
  final String Country;
  final String Network;
  final int IMSI1;
  final int IMSI2;

  const User({
    required this.Country,
    required this.Network,
    required this.IMSI1,
    required this.IMSI2,
  });

  User copy({
    String? Country,
    String? Network,
    int? IMSI1,
    int? IMSI2,
  }) =>
      User(
        Country: Country ?? this.Country,
        Network: Network ?? this.Network,
        IMSI1: IMSI1 ?? this.IMSI1,
        IMSI2: IMSI2 ?? this.IMSI2,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          Country == other.Country &&
          Network == other.Network &&
          IMSI1 == other.IMSI1 &&
          IMSI2 == other.IMSI2;

  @override
  int get hashCode => Country.hashCode ^ Network.hashCode ^ IMSI1.hashCode ^ IMSI2.hashCode;
}
