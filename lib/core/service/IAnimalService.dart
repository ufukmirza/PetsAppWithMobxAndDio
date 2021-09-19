import 'package:dio/dio.dart';
import 'package:flutter_with_mobx_and_dio/core/model/animal_model.dart';



abstract class IAnimalService {
  IAnimalService(this.service);

  Future<List<AnimalModel>> fetchDatas();

  final Dio service;
}