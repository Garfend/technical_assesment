class UserModel {
  final String? name;
  final String? phone;
  final String? avatarUrl;
  final int? loyaltyPoints;

  final double? loyaltyProgress;
  final int? totalOrders;

  const UserModel({
    this.name,
    this.phone,
    this.avatarUrl,
    this.loyaltyPoints,
    this.loyaltyProgress,
    this.totalOrders,
  });

  Map<String, dynamic> toDatabase() {
    return {
      'name': name,
      'phone': phone,
      'avatarUrl': avatarUrl,
      'loyaltyPoints': loyaltyPoints,
      'loyaltyProgress': loyaltyProgress,
      'totalOrders': totalOrders,
    };
  }

  factory UserModel.fromDatabase(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String?,
      phone: map['phone'] as String?,
      avatarUrl: map['avatarUrl'] as String?,
      loyaltyPoints: map['loyaltyPoints'] as int?,
      loyaltyProgress: map['loyaltyProgress'] as double?,
      totalOrders: map['totalOrders'] as int?,
    );
  }

  UserModel copyWith({
    String? name,
    String? phone,
    String? avatarUrl,
    int? loyaltyPoints,
    double? loyaltyProgress,
    int? totalOrders,
  }) {
    return UserModel(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      loyaltyPoints: loyaltyPoints ?? this.loyaltyPoints,
      loyaltyProgress: loyaltyProgress ?? this.loyaltyProgress,
      totalOrders: totalOrders ?? this.totalOrders,
    );
  }

  @override
  List<Object?> get props => [
    name,
    phone,
    avatarUrl,
    loyaltyPoints,
    loyaltyProgress,
    totalOrders,
  ];
}


