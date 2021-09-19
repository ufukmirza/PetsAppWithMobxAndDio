import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_with_mobx_and_dio/core/service/AnimalService.dart';
import 'package:flutter_with_mobx_and_dio/features/view_model/animal_view_model.dart';

final _albumsViewModel = AnimalViewModel();

class AnimalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Observer(builder: (_) {
          return Text(_albumsViewModel.oddIndexValue);
        }),
      ),
      body: Observer(builder: (_) {
        return _albumsViewModel.isLoading
            ? buildCircularProgressIndicator()
            : buildListView();
      }),
    );
  }

  Widget buildCircularProgressIndicator() =>
    Center(child:CircularProgressIndicator());

  ListView buildListView() {
    return ListView.builder(
      itemCount: _albumsViewModel.animalList.length,
      itemBuilder: (context, index) {
        _albumsViewModel.changeIndex(index);
        return Card(
            child: ListTile(
                leading: CircleAvatar( backgroundImage:NetworkImage(_albumsViewModel.animalList[index].image),),
                title: Text(_albumsViewModel.animalList[index].name),
                subtitle: likesToText(index),
                trailing:Text(_albumsViewModel.animalList[index].species) ,
            )
        );

      },
    );
  }

  Widget likesToText(int index){

    String likes= "Likes:";
    _albumsViewModel.animalList[index].foods.likes!.forEach((element) {likes+=element+" "; });
   String  disLikes=",Dislikes:";
    _albumsViewModel.animalList[index].foods.dislikes!.forEach((element) {disLikes+=element+" "; });
    likes+=disLikes;
    return Text(likes);


  }
}
