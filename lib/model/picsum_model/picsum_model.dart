import 'package:json_annotation/json_annotation.dart';
part 'picsum_model.g.dart';

@JsonSerializable()
class PicsumModel {
  String? id;
  String? author;
  int? width;
  int? height;
  String? url;
  @JsonKey(name: 'download_url')
  String? downloadUrl;

  PicsumModel({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  factory PicsumModel.fromJson(Map<String, dynamic> json) {
    return _$PicsumModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PicsumModelToJson(this);
}
