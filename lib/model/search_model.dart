class SearchModel {
  String keyword;
  final List<SearchItem> data;

  SearchModel({this.data});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    var dataJson = json['data'] as List;
    List<SearchItem> data =
        dataJson.map((i) => SearchItem.fromJson(i)).toList();
    return SearchModel(data: data);
  }
}

class SearchItem {
  final String word;
  final String type;
  final String price;
  final String star;
  final String zonename;
  final String distridtname;
  final String url;

  SearchItem(
      {this.word,
      this.type,
      this.price,
      this.star,
      this.zonename,
      this.distridtname,
      this.url});

  factory SearchItem.fromJson(Map<String, dynamic> json) => SearchItem(
      word: json['word'],
      type: json['type'],
      price: json['price'],
      star: json['star'],
      zonename: json['zonename'],
      distridtname: json['distridtname'],
      url: json['url']);
}
