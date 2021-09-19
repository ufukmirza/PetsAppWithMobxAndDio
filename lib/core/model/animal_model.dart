import 'package:json_annotation/json_annotation.dart';
part 'animal_model.g.dart';

@JsonSerializable()
class AnimalModel {

  String image;
  String name;
  String species;
  Foods foods;

  AnimalModel({required this.image,required this.name, required this.species, required this.foods});

  factory AnimalModel.fromJson(Map<String, dynamic> json) {
  return _$AnimalModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
  return _$AnimalModelToJson(this);
  }
  }


@JsonSerializable()
class Foods {
  List<String>? likes=null;
  List<String>? dislikes=null;

  Foods({required this.likes, required this.dislikes});

  Foods.fromJson(Map<String, dynamic> json) {
    likes = json['likes'].cast<String>();
    dislikes = json['dislikes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['likes'] = this.likes;
    data['dislikes'] = this.dislikes;
    return data;
  }
}

