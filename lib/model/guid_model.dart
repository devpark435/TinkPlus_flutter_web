class GuidModel {
  List<Guid>? guid;

  GuidModel({this.guid});

  GuidModel.fromJson(Map<String, dynamic> json) {
    if (json['guid'] != null) {
      guid = <Guid>[];
      json['guid'].forEach((v) {
        guid!.add(new Guid.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.guid != null) {
      data['guid'] = this.guid!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Guid {
  String? title;
  String? company;
  String? image;
  String? content;

  Guid({this.title, this.company, this.image, this.content});

  Guid.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    company = json['company'];
    image = json['image'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['company'] = this.company;
    data['image'] = this.image;
    data['content'] = this.content;
    return data;
  }
}
