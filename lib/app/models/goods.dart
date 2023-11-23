class Goods {
  int? skuId;
  String? skuName;
  String? salePoint;
  int? merchantId;
  String? merchantName;
  String? productionName;
  String? productionArea;
  int? category1Id;
  int? category2Id;
  String? category1Name;
  String? category2Name;
  String? specifications;
  String? packageUnit;
  String? dosage;
  String? approvalNumber;
  String? scopeId;
  String? expireTime;
  String? productionTime;
  String? packageNum;
  String? salePrice;
  String? crossedPrice;
  String? retailPrice;
  String? merchantSkuCode;
  int? middlePackage;
  int? stockNum;
  String? totalStockNum;
  String? skuImage;
  String? mnemonicCode;
  String? showStatus;
  int? cartNum;
  String? maxPromotionPrice;
  String? maxDiscountPrice;
  String? limitTips;
  bool? isSpecial;
  String? qualityStandard;
  String? medicalInsuranceType;
  String? medicalInsuranceArea;
  String? medicalInsuranceNumber;
  String? barCode;
  String? showPriceTips;
  String? countryCode;
  int? medicineType;
  String? merchantSkuId;
  int? promotionId;
  List<LabelList>? labelList;
  String? promotionGoodsInfo;
  List<CouponList>? couponList;
  int? saleNum;
  int? promotionStockNum;
  String? promotionPrice;

  Goods(
      {this.skuId,
        this.skuName,
        this.salePoint,
        this.merchantId,
        this.merchantName,
        this.productionName,
        this.productionArea,
        this.category1Id,
        this.category2Id,
        this.category1Name,
        this.category2Name,
        this.specifications,
        this.packageUnit,
        this.dosage,
        this.approvalNumber,
        this.scopeId,
        this.expireTime,
        this.productionTime,
        this.packageNum,
        this.salePrice,
        this.crossedPrice,
        this.retailPrice,
        this.merchantSkuCode,
        this.middlePackage,
        this.stockNum,
        this.totalStockNum,
        this.skuImage,
        this.mnemonicCode,
        this.showStatus,
        this.cartNum,
        this.maxPromotionPrice,
        this.maxDiscountPrice,
        this.limitTips,
        this.isSpecial,
        this.qualityStandard,
        this.medicalInsuranceType,
        this.medicalInsuranceArea,
        this.medicalInsuranceNumber,
        this.barCode,
        this.showPriceTips,
        this.countryCode,
        this.medicineType,
        this.merchantSkuId,
        this.promotionId,
        this.labelList,
        this.promotionGoodsInfo,
        this.couponList,
        this.saleNum,
        this.promotionStockNum,
        this.promotionPrice});

  Goods.fromJson(Map<String, dynamic> json) {
    skuId = json['skuId'];
    skuName = json['skuName'];
    salePoint = json['salePoint'];
    merchantId = json['merchantId'];
    merchantName = json['merchantName'];
    productionName = json['productionName'];
    productionArea = json['productionArea'];
    category1Id = json['category1Id'];
    category2Id = json['category2Id'];
    category1Name = json['category1Name'];
    category2Name = json['category2Name'];
    specifications = json['specifications'];
    packageUnit = json['packageUnit'];
    dosage = json['dosage'];
    approvalNumber = json['approvalNumber'];
    scopeId = json['scopeId'];
    expireTime = json['expireTime'];
    productionTime = json['productionTime'];
    packageNum = json['packageNum'];
    salePrice = json['salePrice'];
    crossedPrice = json['crossedPrice'];
    retailPrice = json['retailPrice'];
    merchantSkuCode = json['merchantSkuCode'];
    middlePackage = json['middlePackage'];
    stockNum = json['stockNum'];
    totalStockNum = json['totalStockNum'];
    skuImage = json['skuImage'];
    mnemonicCode = json['mnemonicCode'];
    showStatus = json['showStatus'];
    cartNum = json['cartNum'];
    maxPromotionPrice = json['maxPromotionPrice'];
    maxDiscountPrice = json['maxDiscountPrice'];
    limitTips = json['limitTips'];
    isSpecial = json['isSpecial'];
    qualityStandard = json['qualityStandard'];
    medicalInsuranceType = json['medicalInsuranceType'];
    medicalInsuranceArea = json['medicalInsuranceArea'];
    medicalInsuranceNumber = json['medicalInsuranceNumber'];
    barCode = json['barCode'];
    showPriceTips = json['showPriceTips'];
    countryCode = json['countryCode'];
    medicineType = json['medicineType'];
    merchantSkuId = json['merchantSkuId'];
    promotionId = json['promotionId'];
    if (json['labelList'] != null) {
      labelList = <LabelList>[];
      json['labelList'].forEach((v) {
        labelList!.add(new LabelList.fromJson(v));
      });
    }
    promotionGoodsInfo = json['promotionGoodsInfo'];
    if (json['couponList'] != null) {
      couponList = <CouponList>[];
      json['couponList'].forEach((v) {
        couponList!.add(new CouponList.fromJson(v));
      });
    }
    saleNum = json['saleNum'];
    promotionStockNum = json['promotionStockNum'];
    promotionPrice = json['promotionPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skuId'] = this.skuId;
    data['skuName'] = this.skuName;
    data['salePoint'] = this.salePoint;
    data['merchantId'] = this.merchantId;
    data['merchantName'] = this.merchantName;
    data['productionName'] = this.productionName;
    data['productionArea'] = this.productionArea;
    data['category1Id'] = this.category1Id;
    data['category2Id'] = this.category2Id;
    data['category1Name'] = this.category1Name;
    data['category2Name'] = this.category2Name;
    data['specifications'] = this.specifications;
    data['packageUnit'] = this.packageUnit;
    data['dosage'] = this.dosage;
    data['approvalNumber'] = this.approvalNumber;
    data['scopeId'] = this.scopeId;
    data['expireTime'] = this.expireTime;
    data['productionTime'] = this.productionTime;
    data['packageNum'] = this.packageNum;
    data['salePrice'] = this.salePrice;
    data['crossedPrice'] = this.crossedPrice;
    data['retailPrice'] = this.retailPrice;
    data['merchantSkuCode'] = this.merchantSkuCode;
    data['middlePackage'] = this.middlePackage;
    data['stockNum'] = this.stockNum;
    data['totalStockNum'] = this.totalStockNum;
    data['skuImage'] = this.skuImage;
    data['mnemonicCode'] = this.mnemonicCode;
    data['showStatus'] = this.showStatus;
    data['cartNum'] = this.cartNum;
    data['maxPromotionPrice'] = this.maxPromotionPrice;
    data['maxDiscountPrice'] = this.maxDiscountPrice;
    data['limitTips'] = this.limitTips;
    data['isSpecial'] = this.isSpecial;
    data['qualityStandard'] = this.qualityStandard;
    data['medicalInsuranceType'] = this.medicalInsuranceType;
    data['medicalInsuranceArea'] = this.medicalInsuranceArea;
    data['medicalInsuranceNumber'] = this.medicalInsuranceNumber;
    data['barCode'] = this.barCode;
    data['showPriceTips'] = this.showPriceTips;
    data['countryCode'] = this.countryCode;
    data['medicineType'] = this.medicineType;
    data['merchantSkuId'] = this.merchantSkuId;
    data['promotionId'] = this.promotionId;
    if (this.labelList != null) {
      data['labelList'] = this.labelList!.map((v) => v.toJson()).toList();
    }
    data['promotionGoodsInfo'] = this.promotionGoodsInfo;
    if (this.couponList != null) {
      data['couponList'] = this.couponList!.map((v) => v.toJson()).toList();
    }
    data['saleNum'] = this.saleNum;
    data['promotionStockNum'] = this.promotionStockNum;
    data['promotionPrice'] = this.promotionPrice;
    return data;
  }
}

class LabelList {
  int? skuId;
  String? labelType;
  String? labelName;
  String? labelDesc;
  int? promotionId;
  String? promotionRule;
  String? startTime;
  int? startTimeStamp;
  String? endTime;
  int? endTimeStamp;
  int? countdown;
  Null? isSubscribe;
  String? promotionStatus;
  Null? giftList;

  LabelList(
      {this.skuId,
        this.labelType,
        this.labelName,
        this.labelDesc,
        this.promotionId,
        this.promotionRule,
        this.startTime,
        this.startTimeStamp,
        this.endTime,
        this.endTimeStamp,
        this.countdown,
        this.isSubscribe,
        this.promotionStatus,
        this.giftList});

  LabelList.fromJson(Map<String, dynamic> json) {
    skuId = json['skuId'];
    labelType = json['labelType'];
    labelName = json['labelName'];
    labelDesc = json['labelDesc'];
    promotionId = json['promotionId'];
    promotionRule = json['promotionRule'];
    startTime = json['startTime'];
    startTimeStamp = json['startTimeStamp'];
    endTime = json['endTime'];
    endTimeStamp = json['endTimeStamp'];
    countdown = json['countdown'];
    isSubscribe = json['isSubscribe'];
    promotionStatus = json['promotionStatus'];
    giftList = json['giftList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skuId'] = this.skuId;
    data['labelType'] = this.labelType;
    data['labelName'] = this.labelName;
    data['labelDesc'] = this.labelDesc;
    data['promotionId'] = this.promotionId;
    data['promotionRule'] = this.promotionRule;
    data['startTime'] = this.startTime;
    data['startTimeStamp'] = this.startTimeStamp;
    data['endTime'] = this.endTime;
    data['endTimeStamp'] = this.endTimeStamp;
    data['countdown'] = this.countdown;
    data['isSubscribe'] = this.isSubscribe;
    data['promotionStatus'] = this.promotionStatus;
    data['giftList'] = this.giftList;
    return data;
  }
}

class CouponList {
  Null? couponId;
  String? belongTo;
  Null? userCouponId;
  Null? shopId;
  Null? couponName;
  Null? couponType;
  Null? couponDesc;
  Null? limitValue;
  Null? lastValue;
  Null? couponValue;
  Null? couponAmount;
  Null? maxCouponAmount;
  Null? relationSkuType;
  Null? minBrandNum;
  Null? couponStatus;
  int? couponNum;
  int? residueCouponNum;
  Null? expiredType;
  int? couponOrder;
  int? validDay;
  Null? startTime;
  int? startTimeStamp;
  Null? endTime;
  int? endTimeStamp;
  Null? unUseNum;
  Null? peerMaxObtainTimes;
  Null? couponSkuIdList;
  bool? canUse;
  Null? canNotUseDesc;
  Null? role;

  CouponList(
      {this.couponId,
        this.belongTo,
        this.userCouponId,
        this.shopId,
        this.couponName,
        this.couponType,
        this.couponDesc,
        this.limitValue,
        this.lastValue,
        this.couponValue,
        this.couponAmount,
        this.maxCouponAmount,
        this.relationSkuType,
        this.minBrandNum,
        this.couponStatus,
        this.couponNum,
        this.residueCouponNum,
        this.expiredType,
        this.couponOrder,
        this.validDay,
        this.startTime,
        this.startTimeStamp,
        this.endTime,
        this.endTimeStamp,
        this.unUseNum,
        this.peerMaxObtainTimes,
        this.couponSkuIdList,
        this.canUse,
        this.canNotUseDesc,
        this.role});

  CouponList.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    belongTo = json['belongTo'];
    userCouponId = json['userCouponId'];
    shopId = json['shopId'];
    couponName = json['couponName'];
    couponType = json['couponType'];
    couponDesc = json['couponDesc'];
    limitValue = json['limitValue'];
    lastValue = json['lastValue'];
    couponValue = json['couponValue'];
    couponAmount = json['couponAmount'];
    maxCouponAmount = json['maxCouponAmount'];
    relationSkuType = json['relationSkuType'];
    minBrandNum = json['minBrandNum'];
    couponStatus = json['couponStatus'];
    couponNum = json['couponNum'];
    residueCouponNum = json['residueCouponNum'];
    expiredType = json['expiredType'];
    couponOrder = json['couponOrder'];
    validDay = json['validDay'];
    startTime = json['startTime'];
    startTimeStamp = json['startTimeStamp'];
    endTime = json['endTime'];
    endTimeStamp = json['endTimeStamp'];
    unUseNum = json['unUseNum'];
    peerMaxObtainTimes = json['peerMaxObtainTimes'];
    couponSkuIdList = json['couponSkuIdList'];
    canUse = json['canUse'];
    canNotUseDesc = json['canNotUseDesc'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['belongTo'] = this.belongTo;
    data['userCouponId'] = this.userCouponId;
    data['shopId'] = this.shopId;
    data['couponName'] = this.couponName;
    data['couponType'] = this.couponType;
    data['couponDesc'] = this.couponDesc;
    data['limitValue'] = this.limitValue;
    data['lastValue'] = this.lastValue;
    data['couponValue'] = this.couponValue;
    data['couponAmount'] = this.couponAmount;
    data['maxCouponAmount'] = this.maxCouponAmount;
    data['relationSkuType'] = this.relationSkuType;
    data['minBrandNum'] = this.minBrandNum;
    data['couponStatus'] = this.couponStatus;
    data['couponNum'] = this.couponNum;
    data['residueCouponNum'] = this.residueCouponNum;
    data['expiredType'] = this.expiredType;
    data['couponOrder'] = this.couponOrder;
    data['validDay'] = this.validDay;
    data['startTime'] = this.startTime;
    data['startTimeStamp'] = this.startTimeStamp;
    data['endTime'] = this.endTime;
    data['endTimeStamp'] = this.endTimeStamp;
    data['unUseNum'] = this.unUseNum;
    data['peerMaxObtainTimes'] = this.peerMaxObtainTimes;
    data['couponSkuIdList'] = this.couponSkuIdList;
    data['canUse'] = this.canUse;
    data['canNotUseDesc'] = this.canNotUseDesc;
    data['role'] = this.role;
    return data;
  }
}
