class ICCID_model {
  final int ICCID;
  final String Status;


  const ICCID_model({
    required this.ICCID,
    required this.Status,
  });

  ICCID_model copy({
    int? ICCID,
    String? Status,

  }) =>
      ICCID_model(
        Status: Status ?? this.Status,
        ICCID: ICCID ?? this.ICCID,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ICCID_model &&
              runtimeType == other.runtimeType &&
              ICCID == other.ICCID &&
              Status == other.Status ;

  @override
  int get hashCode => ICCID.hashCode ^ Status.hashCode ;
}
