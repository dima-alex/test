//class Url {
//  String url;
//
//  Url({this.url});
//
//  factory Url.fromJson(Map<String, dynamic> json) {
//    return Url(url: json['id']);
//  }
//}

class Url {
  List<Data> url;

  Url({this.url});

  // ignore: missing_return
  factory Url.fromJson(Map<String, dynamic> json) {
    Url(url: List<Data>());
  }
}

class Data {
  String fact;

  Data({this.fact});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(fact: json['fact']);
  }
}
