class SubBannerEntity {
  String code;
  String styleTypeBanner;
  String clientCacheTime2;
  String clientCacheTime3;
  String clientCacheTime1;
  String clientCacheTimeFreq;
  String testId3;
  int bannerFrames;
  String testId4;
  String testId1;
  String testId2;
  List<CmsPromotionsList> cmsPromotionsList;
  String bannerSource;
  int modified;
  int commonCategoryTimestamp;


  SubBannerEntity(
      {this.code,
        this.styleTypeBanner,
        this.clientCacheTime2,
        this.clientCacheTime3,
        this.clientCacheTime1,
        this.clientCacheTimeFreq,
        this.testId3,
        this.bannerFrames,
        this.testId4,
        this.testId1,
        this.testId2,
        this.cmsPromotionsList,
        this.bannerSource,
        this.modified,
        this.commonCategoryTimestamp });

  SubBannerEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    styleTypeBanner = json['styleTypeBanner'];
    clientCacheTime2 = json['clientCacheTime2'];
    clientCacheTime3 = json['clientCacheTime3'];
    clientCacheTime1 = json['clientCacheTime1'];
    clientCacheTimeFreq = json['clientCacheTimeFreq'];
    testId3 = json['testId3'];
    bannerFrames = json['bannerFrames'];
    testId4 = json['testId4'];
    testId1 = json['testId1'];
    testId2 = json['testId2'];
    if (json['cmsPromotionsList'] != null) {
      cmsPromotionsList = new List<CmsPromotionsList>();
      json['cmsPromotionsList'].forEach((v) {
        cmsPromotionsList.add(new CmsPromotionsList.fromJson(v));
      });
    }
    bannerSource = json['bannerSource'];
    modified = json['modified'];
    commonCategoryTimestamp = json['commonCategoryTimestamp'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['styleTypeBanner'] = this.styleTypeBanner;
    data['clientCacheTime2'] = this.clientCacheTime2;
    data['clientCacheTime3'] = this.clientCacheTime3;
    data['clientCacheTime1'] = this.clientCacheTime1;
    data['clientCacheTimeFreq'] = this.clientCacheTimeFreq;
    data['testId3'] = this.testId3;
    data['bannerFrames'] = this.bannerFrames;
    data['testId4'] = this.testId4;
    data['testId1'] = this.testId1;
    data['testId2'] = this.testId2;
    if (this.cmsPromotionsList != null) {
      data['cmsPromotionsList'] =
          this.cmsPromotionsList.map((v) => v.toJson()).toList();
    }
    data['bannerSource'] = this.bannerSource;
    data['modified'] = this.modified;
    data['commonCategoryTimestamp'] = this.commonCategoryTimestamp;

    return data;
  }
}

class CmsPromotionsList {
  int promotionId;
  int catelogyId;
  String promotionName;
  String imageUrl;
  String imageUrlWap;
  String mPageAddress;
  String target;
  String promotionLogUrl;
  String destination;
  String jumpFlag;
  String extensionId;
  String exposalUrl;
  String type;

  CmsPromotionsList(
      {this.promotionId,
        this.catelogyId,
        this.promotionName,
        this.imageUrl,
        this.imageUrlWap,
        this.mPageAddress,
        this.target,
        this.promotionLogUrl,
        this.destination,
        this.jumpFlag,
        this.extensionId,
        this.exposalUrl,
        this.type});

  CmsPromotionsList.fromJson(Map<String, dynamic> json) {
    promotionId = json['promotion_id'];
    catelogyId = json['catelogyId'];
    promotionName = json['promotion_name'];
    imageUrl = json['imageUrl'];
    imageUrlWap = json['imageUrl_wap'];
    mPageAddress = json['mPageAddress'];
    target = json['target'];
    promotionLogUrl = json['promotionLogUrl'];
    destination = json['destination'];
    jumpFlag = json['jumpFlag'];
    extensionId = json['extension_id'];
    exposalUrl = json['exposalUrl'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['promotion_id'] = this.promotionId;
    data['catelogyId'] = this.catelogyId;
    data['promotion_name'] = this.promotionName;
    data['imageUrl'] = this.imageUrl;
    data['imageUrl_wap'] = this.imageUrlWap;
    data['mPageAddress'] = this.mPageAddress;
    data['target'] = this.target;
    data['promotionLogUrl'] = this.promotionLogUrl;
    data['destination'] = this.destination;
    data['jumpFlag'] = this.jumpFlag;
    data['extension_id'] = this.extensionId;
    data['exposalUrl'] = this.exposalUrl;
    data['type'] = this.type;
    return data;
  }
}
