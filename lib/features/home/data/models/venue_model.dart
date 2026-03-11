
import 'package:equatable/equatable.dart';

class VenueModel extends Equatable {
  final String id;
  final String name;
  final String category;
  final String venueImage;

  const VenueModel({
    required this.id,
    required this.name,
    required this.category,
    required this.venueImage,
  });

  Map<String, dynamic> toDatabase() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'venueImage': venueImage,
    };
  }

  factory VenueModel.fromDatabase(Map<String, dynamic> map) {
    return VenueModel(
      id: map['id'],
      name: map['name'],
      category: map['category'],
      venueImage: map['venueImage'],
    );
  }

  VenueModel copyWith({
    String? id,
    String? name,
    String? category,
    String? venueImage,
  }) {
    return VenueModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      venueImage: venueImage ?? this.venueImage,
    );
  }

  @override
  List<Object?> get props => [id, name, category, venueImage];
}
