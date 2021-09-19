import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_with_mobx_and_dio/core/model/animal_model.dart';
import 'package:flutter_with_mobx_and_dio/core/service/AnimalService.dart';
import 'package:flutter_with_mobx_and_dio/core/service/IAnimalService.dart';
import 'package:mobx/mobx.dart';
part 'animal_view_model.g.dart';


class AnimalViewModel = _AnimalViewModelBase with _$AnimalViewModel;


abstract class _AnimalViewModelBase with Store{
  @observable
  bool isLoading = true;
  @observable
  int currentIndex = 0;

  @computed
  String get oddIndexValue => currentIndex.isOdd ? 'ODD' : 'EVEN';

  @observable
  List<AnimalModel> animalList = [];

   var service=AnimalService(Dio());
  //
  // ignore: non_constant_identifier_names
  _AnimalViewModelBase(){

    print("girdii");
    fetchDatas();

  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchDatas() async {
    print("buraya girdi");
    animalList = await service.fetchDatas();
    changeLoading();
  }

  @action
  void changeIndex(int index) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      currentIndex = index;
    });
  }

}







