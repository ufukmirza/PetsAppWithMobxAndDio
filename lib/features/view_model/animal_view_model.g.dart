// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimalViewModel on _AnimalViewModelBase, Store {
  Computed<String>? _$oddIndexValueComputed;

  @override
  String get oddIndexValue =>
      (_$oddIndexValueComputed ??= Computed<String>(() => super.oddIndexValue,
              name: '_AnimalViewModelBase.oddIndexValue'))
          .value;

  final _$isLoadingAtom = Atom(name: '_AnimalViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$currentIndexAtom = Atom(name: '_AnimalViewModelBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$animalListAtom = Atom(name: '_AnimalViewModelBase.animalList');

  @override
  List<AnimalModel> get animalList {
    _$animalListAtom.reportRead();
    return super.animalList;
  }

  @override
  set animalList(List<AnimalModel> value) {
    _$animalListAtom.reportWrite(value, super.animalList, () {
      super.animalList = value;
    });
  }

  final _$fetchDatasAsyncAction =
      AsyncAction('_AnimalViewModelBase.fetchDatas');

  @override
  Future<void> fetchDatas() {
    return _$fetchDatasAsyncAction.run(() => super.fetchDatas());
  }

  final _$_AnimalViewModelBaseActionController =
      ActionController(name: '_AnimalViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_AnimalViewModelBaseActionController.startAction(
        name: '_AnimalViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_AnimalViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIndex(int index) {
    final _$actionInfo = _$_AnimalViewModelBaseActionController.startAction(
        name: '_AnimalViewModelBase.changeIndex');
    try {
      return super.changeIndex(index);
    } finally {
      _$_AnimalViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
currentIndex: ${currentIndex},
animalList: ${animalList},
oddIndexValue: ${oddIndexValue}
    ''';
  }
}
