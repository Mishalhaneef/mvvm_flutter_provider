import 'package:flutter_mvvm_provider/model/picsum_model/picsum_model.dart';
import 'package:flutter_mvvm_provider/services/services.dart';

class ListPictureViewModel {
  List<PictureViewModel>? pictures;

  Future<void> fetchPictures() async {
    final List<PicsumModel> apiResult = await Service().fetchPictureAPI();
    List<PictureViewModel>? pictures =
        apiResult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicsumModel? picsumModel;
  PictureViewModel(this.picsumModel);
}
