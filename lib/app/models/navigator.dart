class BannerHeadModel {
  int? code;
  String? message;
  List<MobileHead>? data;
  bool? fail;
  bool? succeed;

  BannerHeadModel(
      {this.code, this.message, this.data, this.fail, this.succeed});

  BannerHeadModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <MobileHead>[];
      json['data'].forEach((v) {
        data!.add(new MobileHead.fromJson(v));
      });
    }
    fail = json['fail'];
    succeed = json['succeed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['fail'] = this.fail;
    data['succeed'] = this.succeed;
    return data;
  }
}

class MobileHead {
  String? pageType;
  String? image;
  String? link;
  String? name;
  String? show;
  int? sort;
  String? startTime;
  String? endTime;

  MobileHead(
      {this.pageType,
        this.image,
        this.link,
        this.name,
        this.show,
        this.sort,
        this.startTime,
        this.endTime});

  MobileHead.fromJson(Map<String, dynamic> json) {
    pageType = json['pageType'];
    image = json['image'];
    link = json['link'];
    name = json['name'];
    show = json['show'];
    sort = json['sort'];
    startTime = json['startTime'];
    endTime = json['endTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageType'] = this.pageType;
    data['image'] = this.image;
    data['link'] = this.link;
    data['name'] = this.name;
    data['show'] = this.show;
    data['sort'] = this.sort;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    return data;
  }
}
