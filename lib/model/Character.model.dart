class CharacterModel  {
  final String name;
  final String house;
  final String image;

  CharacterModel({required this.name, required this.house, required this.image});

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      name: json['character'] as String,
      house: json['hogwartsHouse'] ?? 'Unknown',
      image: json['image'] ?? '',
    );
  }
}
