// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalModel _$AnimalModelFromJson(Map<String, dynamic> json) {
  return AnimalModel(
    image: json['image'] as String,
    name: json['name'] as String,
    species: json['species'] as String,
    foods: Foods.fromJson(json['foods'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnimalModelToJson(AnimalModel instance) =>
    <String, dynamic>{
      'image':instance.image,
      'name': instance.name,
      'species': instance.species,
      'foods': instance.foods,
    };

Foods _$FoodsFromJson(Map<String, dynamic> json) {
  return Foods(
    likes: (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    dislikes:
        (json['dislikes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$FoodsToJson(Foods instance) => <String, dynamic>{
      'likes': instance.likes,
      'dislikes': instance.dislikes,
    };
