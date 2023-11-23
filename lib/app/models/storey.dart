import 'package:flutter_master/app/models/goods.dart';

class StoreyModel {
  int? code;
  String? message;
  List<Storey>? data;
  bool? fail;
  bool? succeed;

  StoreyModel(
      {this.code, this.message, this.data, this.fail, this.succeed});

  StoreyModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Storey>[];
      json['data'].forEach((v) {
        data!.add(new Storey.fromJson(v));
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

class Storey {
  String? storeyImg;
  String? storeyType;
  String? storeyTypeDesc;
  String? pageType;
  String? storeyLink;
  String? remark;
  List<Goods>? goodsList;
  int? sort;

  Storey(
      {this.storeyImg,
        this.storeyType,
        this.storeyTypeDesc,
        this.pageType,
        this.storeyLink,
        this.remark,
        this.goodsList,
        this.sort});

  Storey.fromJson(Map<String, dynamic> json) {
    storeyImg = json['storeyImg'];
    storeyType = json['storeyType'];
    storeyTypeDesc = json['storeyTypeDesc'];
    pageType = json['pageType'];
    storeyLink = json['storeyLink'];
    remark = json['remark'];
    if (json['goodsList'] != null) {
      goodsList = <Goods>[];
      json['goodsList'].forEach((v) {
        goodsList!.add(new Goods.fromJson(v));
      });
    }
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['storeyImg'] = this.storeyImg;
    data['storeyType'] = this.storeyType;
    data['storeyTypeDesc'] = this.storeyTypeDesc;
    data['pageType'] = this.pageType;
    data['storeyLink'] = this.storeyLink;
    data['remark'] = this.remark;
    if (this.goodsList != null) {
      data['goodsList'] = this.goodsList!.map((v) => v.toJson()).toList();
    }
    data['sort'] = this.sort;
    return data;
  }
}

