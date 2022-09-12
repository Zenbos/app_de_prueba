class User {
  final String firstName;
  final String lastName;
  final int age;
  final int age2;

  const User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.age2
  });

  User copy({
    String? firstName,
    String? lastName,
    int? age,
    int? age2,
  }) =>
      User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        age: age ?? this.age,
        age2: age2 ?? this.age2,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          age == other.age &&
          age2 == other.age2;

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode ^ age.hashCode ^ age2.hashCode;
}
