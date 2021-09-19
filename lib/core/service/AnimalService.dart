

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_with_mobx_and_dio/core/model/animal_model.dart';
import 'package:flutter_with_mobx_and_dio/core/service/IAnimalService.dart';



class AnimalService extends IAnimalService {
  AnimalService(Dio service) : super(service);

  @override
  Future<List<AnimalModel>> fetchDatas() async {
    var response = await Dio().get("https://my-json-server.typicode.com/ufukmirza/json/animals");

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data;
      print(responseData);
      if (responseData is List) {
        print("hahaha");
        return responseData.map((e) => AnimalModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}