class ConfigModel {
  final String searchUrl;

  ConfigModel({this.searchUrl});

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
      ConfigModel(searchUrl: json['searchUrl']);

  Map<String, dynamic> toJson() {
    return {searchUrl: searchUrl};
  }
}
