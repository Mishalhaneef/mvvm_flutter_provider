import 'package:flutter/material.dart';
import 'package:flutter_mvvm_provider/view_model/list_pictures_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListPictureViewModel listPictureViewModel = ListPictureViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picsum Api Test'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: listPictureViewModel.pictures!.length,
              itemBuilder: (context, index) {
                return Container(
                    child: FadeInImage(
                  placeholder: NetworkImage('https://picsum.photos/200/300'),
                  image: NetworkImage(
                      listPictureViewModel.pictures![index].picsumModel!.url ??
                          'https://picsum.photos/200/300'),
                  fit: BoxFit.cover,
                ));
              },
            );
          }
        },
      ),
    );
  }
}
