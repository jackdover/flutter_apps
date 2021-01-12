 
// ------ ------- ------ 自己手写太慢
// ------ ------- ------ 使用网站生成步骤如下:
// ------ 1.浏览器打开 ------ https://javiercbk.github.io/json_to_dart/
// ------ 2.复制json串, 生成dart代码,复制dart代码, 黏贴到此处
// ------ 3.修改冗余和错误代码

// 
class ItemInfoResponseEntity {
  int code;
  List<Floors> floors;

  ItemInfoResponseEntity({this.code, this.floors});

  ItemInfoResponseEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['floors'] != null) {
      floors = new List<Floors>();
      json['floors'].forEach((v) {
        floors.add(new Floors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.floors != null) {
      data['floors'] = this.floors.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// 
class Floors {
  String bId;
  Cf cf;
  Data data;
  String mId;
  String refId;
  int sortId;

  Floors({this.bId, this.cf, this.data, this.mId, this.refId, this.sortId});

  Floors.fromJson(Map<String, dynamic> json) {
    bId = json['bId'];
    cf = json['cf'] != null ? new Cf.fromJson(json['cf']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    mId = json['mId'];
    refId = json['refId'];
    sortId = json['sortId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bId'] = this.bId;
    if (this.cf != null) {
      data['cf'] = this.cf.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['mId'] = this.mId;
    data['refId'] = this.refId;
    data['sortId'] = this.sortId;
    return data;
  }
}

// 
class Cf {
  String bgc;
  String spl;

  Cf({this.bgc, this.spl});

  Cf.fromJson(Map<String, dynamic> json) {
    bgc = json['bgc'];
    spl = json['spl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bgc'] = this.bgc;
    data['spl'] = this.spl;
    return data;
  }
}

// 
class Data {
  bool threeDSwitch;
  VideoControl videoControl;
  bool isShowAR;
  String bgc;
  PriceIcon priceIcon;
  PriceInfo priceInfo;
  bool showAttentionPriceFloor;
  bool showAttention;
  Ad ad;
  List<CccKernel> cccKernel;
  String specBuryPoint;
  String title;
  SelectInfo selectInfo;
  Trustworthy trustworthy;
  PreferentialGuide preferentialGuide;
  Actions actions;
  String selected;
  DefaultAddr defaultAddr;
  String stock;
  String fare;
  ServiceInfo serviceInfo;
  List<ServIconRelation> servIconRelation;
  bool isIcon;
  UnitedRank unitedRank;
  String eventId;
  List<BizList> bizList;
  Slide slide;
  String text3;
  String jumpUrl;
  int tailIconH;
  String text1;
  String text2;
  List<ImgInfo> imgInfo;
  String text2C;
  String text1C;
  bool viewMore;
  bool text1B;
  String text3C;
  String text3Bgc;
  String tailIcon;
  int jumpType;
  int text1S;
  String buried;
  int text2S;
  int text3S;
  String recommend;
  String priceLabel;
  String tabUrl;
  AttentionInfo attentionInfo;
  String rankName;
  bool isOpenH5;
  YuyueInfo yuyueInfo;
  int rankType;
  ButtonInfo buttonInfo;
  PromotionPoint promotionPoint;
  MiaoshaInfo miaoshaInfo;
  PointInfo pointInfo;
  bool isOpenCar;
  RecommendToast recommendToast;
  bool isOpenNode;
  bool isDesCbc;
  YanBaoInfo yanBaoInfo;
  List<WareImage> wareImage;
  JdSerPlusInfo jdSerPlusInfo;
  DefineSkinChange defineSkinChange;
  ShareImgInfo shareImgInfo;
  WareInfo wareInfo;
  Property property;
  bool supportSale;
  bool isOpen;
  bool appointAndPresaleOpen;
  AbTestInfo abTestInfo;
  EventParam eventParam;
  bool abTest800;
  ColorSizeInfo colorSizeInfo;
  ShopInfo shopInfo;
  Suit suit;
  PromotionInfo promotionInfo;
  WeightInfo weightInfo;
  FlashInfo flashInfo;

  Data(
      {this.threeDSwitch,
      this.videoControl,
      this.isShowAR,
      this.bgc,
      this.priceIcon,
      this.priceInfo,
      this.showAttentionPriceFloor,
      this.showAttention,
      this.ad,
      this.cccKernel,
      this.specBuryPoint,
      this.title,
      this.selectInfo,
      this.trustworthy,
      this.preferentialGuide,
      this.actions,
      this.selected,
      this.defaultAddr,
      this.stock,
      this.fare,
      this.serviceInfo,
      this.servIconRelation,
      this.isIcon,
      this.unitedRank,
      this.eventId,
      this.bizList,
      this.slide,
      this.text3,
      this.jumpUrl,
      this.tailIconH,
      this.text1,
      this.text2,
      this.imgInfo,
      this.text2C,
      this.text1C,
      this.viewMore,
      this.text1B,
      this.text3C,
      this.text3Bgc,
      this.tailIcon,
      this.jumpType,
      this.text1S,
      this.buried,
      this.text2S,
      this.text3S,
      this.recommend,
      this.priceLabel,
      this.tabUrl,
      this.attentionInfo,
      this.rankName,
      this.isOpenH5,
      this.yuyueInfo,
      this.rankType,
      this.buttonInfo,
      this.promotionPoint,
      this.miaoshaInfo,
      this.pointInfo,
      this.isOpenCar,
      this.recommendToast,
      this.isOpenNode,
      this.isDesCbc,
      this.yanBaoInfo,
      this.wareImage,
      this.jdSerPlusInfo,
      this.defineSkinChange,
      this.shareImgInfo,
      this.wareInfo,
      this.property,
      this.supportSale,
      this.isOpen,
      this.appointAndPresaleOpen,
      this.abTestInfo,
      this.eventParam,
      this.abTest800,
      this.colorSizeInfo,
      this.shopInfo,
      this.suit,
      this.promotionInfo,
      this.weightInfo,
      this.flashInfo});

  Data.fromJson(Map<String, dynamic> json) {
    threeDSwitch = json['threeDSwitch'];
    videoControl = json['videoControl'] != null ? new VideoControl.fromJson(json['videoControl']) : null;
    isShowAR = json['isShowAR'];
    bgc = json['bgc'];
    priceIcon = json['priceIcon'] != null ? new PriceIcon.fromJson(json['priceIcon']) : null;
    priceInfo = json['priceInfo'] != null ? new PriceInfo.fromJson(json['priceInfo']) : null;
    showAttentionPriceFloor = json['showAttentionPriceFloor'];
    showAttention = json['showAttention'];
    ad = json['ad'] != null ? new Ad.fromJson(json['ad']) : null;
    if (json['CccKernel'] != null) {
      cccKernel = new List<CccKernel>();
      json['CccKernel'].forEach((v) {
        cccKernel.add(new CccKernel.fromJson(v));
      });
    }
    specBuryPoint = json['specBuryPoint'];
    title = json['title'];
    selectInfo = json['selectInfo'] != null ? new SelectInfo.fromJson(json['selectInfo']) : null;
    trustworthy = json['trustworthy'] != null ? new Trustworthy.fromJson(json['trustworthy']) : null;
    preferentialGuide =
        json['preferentialGuide'] != null ? new PreferentialGuide.fromJson(json['preferentialGuide']) : null;
    actions = json['actions'] != null ? new Actions.fromJson(json['actions']) : null;
    selected = json['selected'];
    defaultAddr = json['defaultAddr'] != null ? new DefaultAddr.fromJson(json['defaultAddr']) : null;
    stock = json['stock'];
    fare = json['fare'];
    serviceInfo = json['serviceInfo'] != null ? new ServiceInfo.fromJson(json['serviceInfo']) : null;
    if (json['servIconRelation'] != null) {
      servIconRelation = new List<ServIconRelation>();
      json['servIconRelation'].forEach((v) {
        servIconRelation.add(new ServIconRelation.fromJson(v));
      });
    }
    isIcon = json['isIcon'];
    unitedRank = json['unitedRank'] != null ? new UnitedRank.fromJson(json['unitedRank']) : null;
    eventId = json['eventId'];
    if (json['bizList'] != null) {
      bizList = new List<BizList>();
      json['bizList'].forEach((v) {
        bizList.add(new BizList.fromJson(v));
      });
    }
    slide = json['slide'] != null ? new Slide.fromJson(json['slide']) : null;
    text3 = json['text3'];
    jumpUrl = json['jumpUrl'];
    tailIconH = json['tailIconH'];
    text1 = json['text1'];
    text2 = json['text2'];
    if (json['imgInfo'] != null) {
      imgInfo = new List<ImgInfo>();
      json['imgInfo'].forEach((v) {
        imgInfo.add(new ImgInfo.fromJson(v));
      });
    }
    text2C = json['text2C'];
    text1C = json['text1C'];
    viewMore = json['viewMore'];
    text1B = json['text1B'];
    text3C = json['text3C'];
    text3Bgc = json['text3Bgc'];
    tailIcon = json['tailIcon'];
    jumpType = json['jumpType'];
    text1S = json['text1S'];
    buried = json['buried'];
    text2S = json['text2S'];
    text3S = json['text3S'];
    recommend = json['recommend'];
    priceLabel = json['priceLabel'];
    tabUrl = json['tabUrl'];
    attentionInfo = json['attentionInfo'] != null ? new AttentionInfo.fromJson(json['attentionInfo']) : null;
    rankName = json['rankName'];
    isOpenH5 = json['isOpenH5'];
    yuyueInfo = json['yuyueInfo'] != null ? new YuyueInfo.fromJson(json['yuyueInfo']) : null;
    rankType = json['rankType'];
    buttonInfo = json['buttonInfo'] != null ? new ButtonInfo.fromJson(json['buttonInfo']) : null;
    promotionPoint = json['promotionPoint'] != null ? new PromotionPoint.fromJson(json['promotionPoint']) : null;
    miaoshaInfo = json['miaoshaInfo'] != null ? new MiaoshaInfo.fromJson(json['miaoshaInfo']) : null;
    pointInfo = json['pointInfo'] != null ? new PointInfo.fromJson(json['pointInfo']) : null;
    isOpenCar = json['isOpenCar'];
    recommendToast = json['recommendToast'] != null ? new RecommendToast.fromJson(json['recommendToast']) : null;
    isOpenNode = json['isOpenNode'];
    isDesCbc = json['isDesCbc'];
    yanBaoInfo = json['yanBaoInfo'] != null ? new YanBaoInfo.fromJson(json['yanBaoInfo']) : null;
    if (json['wareImage'] != null) {
      wareImage = new List<WareImage>();
      json['wareImage'].forEach((v) {
        wareImage.add(new WareImage.fromJson(v));
      });
    }
    jdSerPlusInfo = json['jdSerPlusInfo'] != null ? new JdSerPlusInfo.fromJson(json['jdSerPlusInfo']) : null;
    defineSkinChange =
        json['defineSkinChange'] != null ? new DefineSkinChange.fromJson(json['defineSkinChange']) : null;
    shareImgInfo = json['shareImgInfo'] != null ? new ShareImgInfo.fromJson(json['shareImgInfo']) : null;
    wareInfo = json['wareInfo'] != null ? new WareInfo.fromJson(json['wareInfo']) : null;
    property = json['property'] != null ? new Property.fromJson(json['property']) : null;
    supportSale = json['supportSale'];
    isOpen = json['isOpen'];
    appointAndPresaleOpen = json['appointAndPresaleOpen'];
    abTestInfo = json['abTestInfo'] != null ? new AbTestInfo.fromJson(json['abTestInfo']) : null;
    eventParam = json['eventParam'] != null ? new EventParam.fromJson(json['eventParam']) : null;
    abTest800 = json['abTest800'];
    colorSizeInfo = json['colorSizeInfo'] != null ? new ColorSizeInfo.fromJson(json['colorSizeInfo']) : null;
    shopInfo = json['shopInfo'] != null ? new ShopInfo.fromJson(json['shopInfo']) : null;
    suit = json['suit'] != null ? new Suit.fromJson(json['suit']) : null;
    promotionInfo = json['promotionInfo'] != null ? new PromotionInfo.fromJson(json['promotionInfo']) : null;
    weightInfo = json['weightInfo'] != null ? new WeightInfo.fromJson(json['weightInfo']) : null;
    flashInfo = json['flashInfo'] != null ? new FlashInfo.fromJson(json['flashInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['threeDSwitch'] = this.threeDSwitch;
    if (this.videoControl != null) {
      data['videoControl'] = this.videoControl.toJson();
    }
    data['isShowAR'] = this.isShowAR;
    data['bgc'] = this.bgc;
    if (this.priceIcon != null) {
      data['priceIcon'] = this.priceIcon.toJson();
    }
    if (this.priceInfo != null) {
      data['priceInfo'] = this.priceInfo.toJson();
    }
    data['showAttentionPriceFloor'] = this.showAttentionPriceFloor;
    data['showAttention'] = this.showAttention;
    if (this.ad != null) {
      data['ad'] = this.ad.toJson();
    }
    if (this.cccKernel != null) {
      data['CccKernel'] = this.cccKernel.map((v) => v.toJson()).toList();
    }
    data['specBuryPoint'] = this.specBuryPoint;
    data['title'] = this.title;
    if (this.selectInfo != null) {
      data['selectInfo'] = this.selectInfo.toJson();
    }
    if (this.trustworthy != null) {
      data['trustworthy'] = this.trustworthy.toJson();
    }
    if (this.preferentialGuide != null) {
      data['preferentialGuide'] = this.preferentialGuide.toJson();
    }
    if (this.actions != null) {
      data['actions'] = this.actions.toJson();
    }
    data['selected'] = this.selected;
    if (this.defaultAddr != null) {
      data['defaultAddr'] = this.defaultAddr.toJson();
    }
    data['stock'] = this.stock;
    data['fare'] = this.fare;
    if (this.serviceInfo != null) {
      data['serviceInfo'] = this.serviceInfo.toJson();
    }
    if (this.servIconRelation != null) {
      data['servIconRelation'] = this.servIconRelation.map((v) => v.toJson()).toList();
    }
    data['isIcon'] = this.isIcon;
    if (this.unitedRank != null) {
      data['unitedRank'] = this.unitedRank.toJson();
    }
    data['eventId'] = this.eventId;
    if (this.bizList != null) {
      data['bizList'] = this.bizList.map((v) => v.toJson()).toList();
    }
    if (this.slide != null) {
      data['slide'] = this.slide.toJson();
    }
    data['text3'] = this.text3;
    data['jumpUrl'] = this.jumpUrl;
    data['tailIconH'] = this.tailIconH;
    data['text1'] = this.text1;
    data['text2'] = this.text2;
    if (this.imgInfo != null) {
      data['imgInfo'] = this.imgInfo.map((v) => v.toJson()).toList();
    }
    data['text2C'] = this.text2C;
    data['text1C'] = this.text1C;
    data['viewMore'] = this.viewMore;
    data['text1B'] = this.text1B;
    data['text3C'] = this.text3C;
    data['text3Bgc'] = this.text3Bgc;
    data['tailIcon'] = this.tailIcon;
    data['jumpType'] = this.jumpType;
    data['text1S'] = this.text1S;
    data['buried'] = this.buried;
    data['text2S'] = this.text2S;
    data['text3S'] = this.text3S;
    data['recommend'] = this.recommend;
    data['priceLabel'] = this.priceLabel;
    data['tabUrl'] = this.tabUrl;
    if (this.attentionInfo != null) {
      data['attentionInfo'] = this.attentionInfo.toJson();
    }
    data['rankName'] = this.rankName;
    data['isOpenH5'] = this.isOpenH5;
    if (this.yuyueInfo != null) {
      data['yuyueInfo'] = this.yuyueInfo.toJson();
    }
    data['rankType'] = this.rankType;
    if (this.buttonInfo != null) {
      data['buttonInfo'] = this.buttonInfo.toJson();
    }
    if (this.promotionPoint != null) {
      data['promotionPoint'] = this.promotionPoint.toJson();
    }
    if (this.miaoshaInfo != null) {
      data['miaoshaInfo'] = this.miaoshaInfo.toJson();
    }
    if (this.pointInfo != null) {
      data['pointInfo'] = this.pointInfo.toJson();
    }
    data['isOpenCar'] = this.isOpenCar;
    if (this.recommendToast != null) {
      data['recommendToast'] = this.recommendToast.toJson();
    }
    data['isOpenNode'] = this.isOpenNode;
    data['isDesCbc'] = this.isDesCbc;
    if (this.yanBaoInfo != null) {
      data['yanBaoInfo'] = this.yanBaoInfo.toJson();
    }
    if (this.wareImage != null) {
      data['wareImage'] = this.wareImage.map((v) => v.toJson()).toList();
    }
    if (this.jdSerPlusInfo != null) {
      data['jdSerPlusInfo'] = this.jdSerPlusInfo.toJson();
    }
    if (this.defineSkinChange != null) {
      data['defineSkinChange'] = this.defineSkinChange.toJson();
    }
    if (this.shareImgInfo != null) {
      data['shareImgInfo'] = this.shareImgInfo.toJson();
    }
    if (this.wareInfo != null) {
      data['wareInfo'] = this.wareInfo.toJson();
    }
    if (this.property != null) {
      data['property'] = this.property.toJson();
    }
    data['supportSale'] = this.supportSale;
    data['isOpen'] = this.isOpen;
    data['appointAndPresaleOpen'] = this.appointAndPresaleOpen;
    if (this.abTestInfo != null) {
      data['abTestInfo'] = this.abTestInfo.toJson();
    }
    if (this.eventParam != null) {
      data['eventParam'] = this.eventParam.toJson();
    }
    data['abTest800'] = this.abTest800;
    if (this.colorSizeInfo != null) {
      data['colorSizeInfo'] = this.colorSizeInfo.toJson();
    }
    if (this.shopInfo != null) {
      data['shopInfo'] = this.shopInfo.toJson();
    }
    if (this.suit != null) {
      data['suit'] = this.suit.toJson();
    }
    if (this.promotionInfo != null) {
      data['promotionInfo'] = this.promotionInfo.toJson();
    }
    if (this.weightInfo != null) {
      data['weightInfo'] = this.weightInfo.toJson();
    }
    if (this.flashInfo != null) {
      data['flashInfo'] = this.flashInfo.toJson();
    }
    return data;
  }
}

// 
class VideoControl {
  bool optimize;
  bool autoPlay;
  MasterVideo masterVideo;

  VideoControl({this.optimize, this.autoPlay, this.masterVideo});

  VideoControl.fromJson(Map<String, dynamic> json) {
    optimize = json['optimize'];
    autoPlay = json['autoPlay'];
    masterVideo = json['masterVideo'] != null ? new MasterVideo.fromJson(json['masterVideo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['optimize'] = this.optimize;
    data['autoPlay'] = this.autoPlay;
    if (this.masterVideo != null) {
      data['masterVideo'] = this.masterVideo.toJson();
    }
    return data;
  }
}

// 
class MasterVideo {
  String playUrl;
  int duration;
  String imageUrl;
  VideoShare videoShare;
  String videoId;
  String videoDuration;

  MasterVideo({this.playUrl, this.duration, this.imageUrl, this.videoShare, this.videoId, this.videoDuration});

  MasterVideo.fromJson(Map<String, dynamic> json) {
    playUrl = json['playUrl'];
    duration = json['duration'];
    imageUrl = json['imageUrl'];
    videoShare = json['videoShare'] != null ? new VideoShare.fromJson(json['videoShare']) : null;
    videoId = json['videoId'];
    videoDuration = json['videoDuration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['playUrl'] = this.playUrl;
    data['duration'] = this.duration;
    data['imageUrl'] = this.imageUrl;
    if (this.videoShare != null) {
      data['videoShare'] = this.videoShare.toJson();
    }
    data['videoId'] = this.videoId;
    data['videoDuration'] = this.videoDuration;
    return data;
  }
}

// 
class VideoShare {
  String microBlog;
  String title;
  String des;
  String url;

  VideoShare({this.microBlog, this.title, this.des, this.url});

  VideoShare.fromJson(Map<String, dynamic> json) {
    microBlog = json['microBlog'];
    title = json['title'];
    des = json['des'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['microBlog'] = this.microBlog;
    data['title'] = this.title;
    data['des'] = this.des;
    data['url'] = this.url;
    return data;
  }
}

// 
class PriceIcon {
  String kanJia;
  String jiangJia;

  PriceIcon({this.kanJia, this.jiangJia});

  PriceIcon.fromJson(Map<String, dynamic> json) {
    kanJia = json['kanJia'];
    jiangJia = json['jiangJia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kanJia'] = this.kanJia;
    data['jiangJia'] = this.jiangJia;
    return data;
  }
}

// 
class PriceInfo {
  String saveMoney;
  String originPrice;
  String jprice;

  PriceInfo({this.saveMoney, this.originPrice, this.jprice});

  PriceInfo.fromJson(Map<String, dynamic> json) {
    saveMoney = json['saveMoney'];
    originPrice = json['originPrice'];
    jprice = json['jprice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['saveMoney'] = this.saveMoney;
    data['originPrice'] = this.originPrice;
    data['jprice'] = this.jprice;
    return data;
  }
}

// 
class Ad {
  String adword;
  String textColor;
  String color;
  bool newALContent;
  bool hasFold;
  String adLinkContent;
  String adLink;

  Ad({this.adword, this.textColor, this.color, this.newALContent, this.hasFold, this.adLinkContent, this.adLink});

  Ad.fromJson(Map<String, dynamic> json) {
    adword = json['adword'];
    textColor = json['textColor'];
    color = json['color'];
    newALContent = json['newALContent'];
    hasFold = json['hasFold'];
    adLinkContent = json['adLinkContent'];
    adLink = json['adLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adword'] = this.adword;
    data['textColor'] = this.textColor;
    data['color'] = this.color;
    data['newALContent'] = this.newALContent;
    data['hasFold'] = this.hasFold;
    data['adLinkContent'] = this.adLinkContent;
    data['adLink'] = this.adLink;
    return data;
  }
}

// 
class CccKernel {
  String icon;
  String paramValue;
  String paramName;

  CccKernel({this.icon, this.paramValue, this.paramName});

  CccKernel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    paramValue = json['paramValue'];
    paramName = json['paramName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['paramValue'] = this.paramValue;
    data['paramName'] = this.paramName;
    return data;
  }
}

// 
class SelectInfo {
  String inTitle;
  String gdImage;
  String imgUrl;
  String dgImage;

  SelectInfo({this.inTitle, this.gdImage, this.imgUrl, this.dgImage});

  SelectInfo.fromJson(Map<String, dynamic> json) {
    inTitle = json['inTitle'];
    gdImage = json['gdImage'];
    imgUrl = json['imgUrl'];
    dgImage = json['dgImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inTitle'] = this.inTitle;
    data['gdImage'] = this.gdImage;
    data['imgUrl'] = this.imgUrl;
    data['dgImage'] = this.dgImage;
    return data;
  }
}

// 
class Trustworthy {
  String iconInDialog;
  String iconUrl;
  List<IconListOne> iconListOne;
  String guideJumpUrl;
  String type;
  List<IconList> iconList;
  String guideText;
  String separator;

  Trustworthy(
      {this.iconInDialog,
      this.iconUrl,
      this.iconListOne,
      this.guideJumpUrl,
      this.type,
      this.iconList,
      this.guideText,
      this.separator});

  Trustworthy.fromJson(Map<String, dynamic> json) {
    iconInDialog = json['iconInDialog'];
    iconUrl = json['iconUrl'];
    if (json['iconListOne'] != null) {
      iconListOne = new List<IconListOne>();
      json['iconListOne'].forEach((v) {
        iconListOne.add(new IconListOne.fromJson(v));
      });
    }
    guideJumpUrl = json['guideJumpUrl'];
    type = json['type'];
    if (json['iconList'] != null) {
      iconList = new List<IconList>();
      json['iconList'].forEach((v) {
        iconList.add(new IconList.fromJson(v));
      });
    }
    guideText = json['guideText'];
    separator = json['separator'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iconInDialog'] = this.iconInDialog;
    data['iconUrl'] = this.iconUrl;
    if (this.iconListOne != null) {
      data['iconListOne'] = this.iconListOne.map((v) => v.toJson()).toList();
    }
    data['guideJumpUrl'] = this.guideJumpUrl;
    data['type'] = this.type;
    if (this.iconList != null) {
      data['iconList'] = this.iconList.map((v) => v.toJson()).toList();
    }
    data['guideText'] = this.guideText;
    data['separator'] = this.separator;
    return data;
  }
}

// 
class IconList {
  /**
   * jichu : false
   * text : 运费险
   * imageUrl : https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png
   * sortId : 7
   * class : com.jd.app.server.warecoresoa.domain.icon.ServerIcon
   * show : true
   * tip : 送运费险
   * iconType : right
   */

  bool jichu;
  String text;
  String imageUrl;
  int sortId;
  bool show;
  String tip;
  String iconType;

  IconList(this.jichu, this.text, this.imageUrl, this.sortId, this.show, this.tip, this.iconType);

  IconList.fromJson(Map<String, dynamic> json) {
    jichu = json['jichu'];
    text = json['text'];
    imageUrl = json['imageUrl'];
    sortId = json['sortId'];
    show = json['show'];
    tip = json['tip'];
    iconType = json['iconType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jichu'] = this.jichu;
    data['text'] = this.text;
    data['imageUrl'] = this.imageUrl;
    data['sortId'] = this.sortId;
    data['show'] = this.show;
    data['tip'] = this.tip;
    data['iconType'] = this.iconType;
    return data;
  }
}

// 
class IconListOne {
  bool jichu;
  String text;
  String imageUrl;
  int sortId;
  bool show;
  String tip;
  String iconType;

  IconListOne({this.jichu, this.text, this.imageUrl, this.sortId, this.show, this.tip, this.iconType});

  IconListOne.fromJson(Map<String, dynamic> json) {
    jichu = json['jichu'];
    text = json['text'];
    imageUrl = json['imageUrl'];
    sortId = json['sortId'];
    show = json['show'];
    tip = json['tip'];
    iconType = json['iconType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jichu'] = this.jichu;
    data['text'] = this.text;
    data['imageUrl'] = this.imageUrl;
    data['sortId'] = this.sortId;
    data['show'] = this.show;
    data['tip'] = this.tip;
    data['iconType'] = this.iconType;
    return data;
  }
}

// 
class PreferentialGuide {
  String iconCode;
  Promotion promotion;
  WhiteBarInfo whiteBarInfo;
  bool hasFinanceCoupon;

  PreferentialGuide({this.iconCode, this.promotion, this.whiteBarInfo, this.hasFinanceCoupon});

  PreferentialGuide.fromJson(Map<String, dynamic> json) {
    iconCode = json['iconCode'];
    promotion = json['promotion'] != null ? new Promotion.fromJson(json['promotion']) : null;
    whiteBarInfo = json['whiteBarInfo'] != null ? new WhiteBarInfo.fromJson(json['whiteBarInfo']) : null;
    hasFinanceCoupon = json['hasFinanceCoupon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iconCode'] = this.iconCode;
    if (this.promotion != null) {
      data['promotion'] = this.promotion.toJson();
    }
    if (this.whiteBarInfo != null) {
      data['whiteBarInfo'] = this.whiteBarInfo.toJson();
    }
    data['hasFinanceCoupon'] = this.hasFinanceCoupon;
    return data;
  }
}

// 
class Promotion {
  String plusMark;
  List<Gift> gift;
  bool isTwoLine;
  String tip;
  List<String> activityTypes;
  bool canReturnHaggleInfo;
  List<Activity> activity;
  bool isBargain;
  LimitBuyInfo limitBuyInfo;
  String prompt;
  String normalMark;

  Promotion(
      {this.plusMark,
      this.gift,
      this.isTwoLine,
      this.tip,
      this.activityTypes,
      this.canReturnHaggleInfo,
      this.activity,
      this.isBargain,
      this.limitBuyInfo,
      this.prompt,
      this.normalMark});

  Promotion.fromJson(Map<String, dynamic> json) {
    plusMark = json['plusMark'];
    if (json['gift'] != null) {
      gift = new List<Gift>();
      json['gift'].forEach((v) {
        gift.add(new Gift.fromJson(v));
      });
    }
    isTwoLine = json['isTwoLine'];
    tip = json['tip'];
    activityTypes = json['activityTypes'].cast<String>();
    canReturnHaggleInfo = json['canReturnHaggleInfo'];
    if (json['activity'] != null) {
      activity = new List<Activity>();
      json['activity'].forEach((v) {
        activity.add(new Activity.fromJson(v));
      });
    }
    isBargain = json['isBargain'];
    limitBuyInfo = json['limitBuyInfo'] != null ? new LimitBuyInfo.fromJson(json['limitBuyInfo']) : null;

    prompt = json['prompt'];
    normalMark = json['normalMark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plusMark'] = this.plusMark;
    if (this.gift != null) {
      data['gift'] = this.gift.map((v) => v.toJson()).toList();
    }
    data['isTwoLine'] = this.isTwoLine;
    data['tip'] = this.tip;
    data['activityTypes'] = this.activityTypes;
    data['canReturnHaggleInfo'] = this.canReturnHaggleInfo;
    if (this.activity != null) {
      data['activity'] = this.activity.map((v) => v.toJson()).toList();
    }

    data['isBargain'] = this.isBargain;
    if (this.limitBuyInfo != null) {
      data['limitBuyInfo'] = this.limitBuyInfo.toJson();
    }
    data['prompt'] = this.prompt;
    data['normalMark'] = this.normalMark;
    return data;
  }
}

// 
class Gift {
  String proId;
  String text;
  String num;
  String link;
  String skuId;
  String value;

  Gift({this.proId, this.text, this.num, this.link, this.skuId, this.value});

  Gift.fromJson(Map<String, dynamic> json) {
    proId = json['proId'];
    text = json['text'];
    num = json['num'];
    link = json['link'];
    skuId = json['skuId'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['proId'] = this.proId;
    data['text'] = this.text;
    data['num'] = this.num;
    data['link'] = this.link;
    data['skuId'] = this.skuId;
    data['value'] = this.value;
    return data;
  }
}

// 
class Activity {
  String value;
  String text;
  String skuId;
  int proSortNum;
  String link;
  String proId;
  String promoId;

  Activity({this.value, this.text, this.skuId, this.proSortNum, this.link, this.proId, this.promoId});

  Activity.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    text = json['text'];
    skuId = json['skuId'];
    proSortNum = json['proSortNum'];
    link = json['link'];
    proId = json['proId'];
    promoId = json['promoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['text'] = this.text;
    data['skuId'] = this.skuId;
    data['proSortNum'] = this.proSortNum;
    data['link'] = this.link;
    data['proId'] = this.proId;
    data['promoId'] = this.promoId;
    return data;
  }
}

// 
class LimitBuyInfo {
  String limitNum;
  String noSaleFlag;
  String promotionText;

  LimitBuyInfo({this.limitNum, this.noSaleFlag, this.promotionText});

  LimitBuyInfo.fromJson(Map<String, dynamic> json) {
    limitNum = json['limitNum'];
    noSaleFlag = json['noSaleFlag'];
    promotionText = json['promotionText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['limitNum'] = this.limitNum;
    data['noSaleFlag'] = this.noSaleFlag;
    data['promotionText'] = this.promotionText;
    return data;
  }
}

// 
class WhiteBarInfo {
  String marketingText;
  List<PlanInfos> planInfos;
  bool ava;

  bool login;
  String url;
  bool btUser;

  WhiteBarInfo({this.marketingText, this.planInfos, this.ava, this.login, this.url, this.btUser});

  WhiteBarInfo.fromJson(Map<String, dynamic> json) {
    marketingText = json['marketingText'];
    if (json['planInfos'] != null) {
      planInfos = new List<PlanInfos>();
      json['planInfos'].forEach((v) {
        planInfos.add(new PlanInfos.fromJson(v));
      });
    }
    ava = json['ava'];

    login = json['login'];
    url = json['url'];
    btUser = json['btUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['marketingText'] = this.marketingText;
    if (this.planInfos != null) {
      data['planInfos'] = this.planInfos.map((v) => v.toJson()).toList();
    }
    data['ava'] = this.ava;

    data['login'] = this.login;
    data['url'] = this.url;
    data['btUser'] = this.btUser;
    return data;
  }
}

// 
class PlanInfos {
  String rate;
  int plan;
  bool isMaxdiscount;

  String secondTitle;
  String laterPay;
  String mainTitle;
  String planFee;

  PlanInfos({this.rate, this.plan, this.isMaxdiscount, this.secondTitle, this.laterPay, this.mainTitle, this.planFee});

  PlanInfos.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    plan = json['plan'];
    isMaxdiscount = json['isMaxdiscount'];

    secondTitle = json['secondTitle'];
    laterPay = json['laterPay'];
    mainTitle = json['mainTitle'];
    planFee = json['planFee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    data['plan'] = this.plan;
    data['isMaxdiscount'] = this.isMaxdiscount;

    data['secondTitle'] = this.secondTitle;
    data['laterPay'] = this.laterPay;
    data['mainTitle'] = this.mainTitle;
    data['planFee'] = this.planFee;
    return data;
  }
}

// 
class Actions {
  List<BizActs> bizActs;

  Actions({this.bizActs});

  Actions.fromJson(Map<String, dynamic> json) {
    if (json['bizActs'] != null) {
      bizActs = new List<BizActs>();
      json['bizActs'].forEach((v) {
        bizActs.add(new BizActs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bizActs != null) {
      data['bizActs'] = this.bizActs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// 
class BizActs {
  String icon;
  int jumpType;
  bool truthBigSale;
  String desc;
  bool mustLogin;
  String bizKey;

  String url;

  BizActs({this.icon, this.jumpType, this.truthBigSale, this.desc, this.mustLogin, this.bizKey, this.url});

  BizActs.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    jumpType = json['jumpType'];
    truthBigSale = json['truthBigSale'];
    desc = json['desc'];
    mustLogin = json['mustLogin'];
    bizKey = json['bizKey'];

    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['jumpType'] = this.jumpType;
    data['truthBigSale'] = this.truthBigSale;
    data['desc'] = this.desc;
    data['mustLogin'] = this.mustLogin;
    data['bizKey'] = this.bizKey;

    data['url'] = this.url;
    return data;
  }
}

// 
class DefaultAddr {
  String provinceId;
  String countyName;
  String cityId;
  String townName;
  String cityName;

  String townId;
  String provinceName;
  String countyId;

  DefaultAddr(
      {this.provinceId,
      this.countyName,
      this.cityId,
      this.townName,
      this.cityName,
      this.townId,
      this.provinceName,
      this.countyId});

  DefaultAddr.fromJson(Map<String, dynamic> json) {
    provinceId = json['provinceId'];
    countyName = json['countyName'];
    cityId = json['cityId'];
    townName = json['townName'];
    cityName = json['cityName'];

    townId = json['townId'];
    provinceName = json['provinceName'];
    countyId = json['countyId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['provinceId'] = this.provinceId;
    data['countyName'] = this.countyName;
    data['cityId'] = this.cityId;
    data['townName'] = this.townName;
    data['cityName'] = this.cityName;

    data['townId'] = this.townId;
    data['provinceName'] = this.provinceName;
    data['countyId'] = this.countyId;
    return data;
  }
}

// 
class ServiceInfo {
  Basic basic;

  ServiceInfo({this.basic});

  ServiceInfo.fromJson(Map<String, dynamic> json) {
    basic = json['basic'] != null ? new Basic.fromJson(json['basic']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.basic != null) {
      data['basic'] = this.basic.toJson();
    }
    return data;
  }
}

// 
class Basic {
  List<IconList> iconList;

  String title;

  Basic({this.iconList, this.title});

  Basic.fromJson(Map<String, dynamic> json) {
    if (json['iconList'] != null) {
      iconList = new List<IconList>();
      json['iconList'].forEach((v) {
        iconList.add(new IconList.fromJson(v));
      });
    }

    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iconList != null) {
      data['iconList'] = this.iconList.map((v) => v.toJson()).toList();
    }

    data['title'] = this.title;
    return data;
  }
}

// 
class ServIconRelation {
  String iconValue;

  String iconType;

  ServIconRelation({this.iconValue, this.iconType});

  ServIconRelation.fromJson(Map<String, dynamic> json) {
    iconValue = json['iconValue'];

    iconType = json['iconType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iconValue'] = this.iconValue;

    data['iconType'] = this.iconType;
    return data;
  }
}

// 
class UnitedRank {
  String id;
  String icon;
  String jumpType;
  String desc;
  String titleImage;
  String arrowImage;
  int rankType;
  String bgImage;
  String url;

  UnitedRank(
      {this.id,
      this.icon,
      this.jumpType,
      this.desc,
      this.titleImage,
      this.arrowImage,
      this.rankType,
      this.bgImage,
      this.url});

  UnitedRank.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    jumpType = json['jumpType'];
    desc = json['desc'];
    titleImage = json['titleImage'];
    arrowImage = json['arrowImage'];
    rankType = json['rankType'];
    bgImage = json['bgImage'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['jumpType'] = this.jumpType;
    data['desc'] = this.desc;
    data['titleImage'] = this.titleImage;
    data['arrowImage'] = this.arrowImage;
    data['rankType'] = this.rankType;
    data['bgImage'] = this.bgImage;
    data['url'] = this.url;
    return data;
  }
}

// 
class BizList {
  String icon;
  String title;
  String desc;
  bool mustLogin;
  String bizKey;
  int type;
  String url;
  JumpData jumpData;

  BizList({this.icon, this.title, this.desc, this.mustLogin, this.bizKey, this.type, this.url, this.jumpData});

  BizList.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    desc = json['desc'];
    mustLogin = json['mustLogin'];
    bizKey = json['bizKey'];
    type = json['type'];
    url = json['url'];
    jumpData = json['jumpData'] != null ? new JumpData.fromJson(json['jumpData']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['mustLogin'] = this.mustLogin;
    data['bizKey'] = this.bizKey;
    data['type'] = this.type;
    data['url'] = this.url;
    if (this.jumpData != null) {
      data['jumpData'] = this.jumpData.toJson();
    }
    return data;
  }
}

// 
class JumpData {
  int bizType;

  JumpData({this.bizType});

  JumpData.fromJson(Map<String, dynamic> json) {
    bizType = json['bizType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bizType'] = this.bizType;
    return data;
  }
}

// 
class Slide {
  String slideColor;
  String slideSelect;

  Slide({this.slideColor, this.slideSelect});

  Slide.fromJson(Map<String, dynamic> json) {
    slideColor = json['slideColor'];
    slideSelect = json['slideSelect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slideColor'] = this.slideColor;
    data['slideSelect'] = this.slideSelect;
    return data;
  }
}

// 
class ImgInfo {
  String imgUrl;
  String imgJumpUrl;
  int imgJumpType;
  String imgText;

  ImgInfo({this.imgUrl, this.imgJumpUrl, this.imgJumpType, this.imgText});

  ImgInfo.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    imgJumpUrl = json['imgJumpUrl'];
    imgJumpType = json['imgJumpType'];
    imgText = json['imgText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['imgJumpUrl'] = this.imgJumpUrl;
    data['imgJumpType'] = this.imgJumpType;
    data['imgText'] = this.imgText;
    return data;
  }
}

// 
class AttentionInfo {
  String txt1;
  String txt2;

  AttentionInfo({this.txt1, this.txt2});

  AttentionInfo.fromJson(Map<String, dynamic> json) {
    txt1 = json['txt1'];
    txt2 = json['txt2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['txt1'] = this.txt1;
    data['txt2'] = this.txt2;
    return data;
  }
}

// 
class YuyueInfo {
  int plusType;
  bool isbuyTime;
  bool isYuYue;
  bool yuYue;
  int yuyueNum;
  bool mad;

  YuyueInfo({this.plusType, this.isbuyTime, this.isYuYue, this.yuYue, this.yuyueNum, this.mad});

  YuyueInfo.fromJson(Map<String, dynamic> json) {
    plusType = json['plusType'];
    isbuyTime = json['isbuyTime'];
    isYuYue = json['isYuYue'];
    yuYue = json['yuYue'];
    yuyueNum = json['yuyueNum'];
    mad = json['mad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plusType'] = this.plusType;
    data['isbuyTime'] = this.isbuyTime;
    data['isYuYue'] = this.isYuYue;
    data['yuYue'] = this.yuYue;
    data['yuyueNum'] = this.yuyueNum;
    data['mad'] = this.mad;

    return data;
  }
}

// 
class ButtonInfo {
  Second second;

  Second main;

  ButtonInfo({this.second, this.main});

  ButtonInfo.fromJson(Map<String, dynamic> json) {
    second = json['second'] != null ? new Second.fromJson(json['second']) : null;

    main = json['main'] != null ? new Second.fromJson(json['main']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.second != null) {
      data['second'] = this.second.toJson();
    }

    if (this.main != null) {
      data['main'] = this.main.toJson();
    }
    return data;
  }
}

// 
class Second {
  String bgColor;

  String textColor;
  int type;
  int source;
  String name;

  Second({this.bgColor, this.textColor, this.type, this.source, this.name});

  Second.fromJson(Map<String, dynamic> json) {
    bgColor = json['bgColor'];

    textColor = json['textColor'];
    type = json['type'];
    source = json['source'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bgColor'] = this.bgColor;

    data['textColor'] = this.textColor;
    data['type'] = this.type;
    data['source'] = this.source;
    data['name'] = this.name;
    return data;
  }
}

// 
class PromotionPoint {
  String promotionSkinPoint;
  String promotionTagPoint;

  PromotionPoint({this.promotionSkinPoint, this.promotionTagPoint});

  PromotionPoint.fromJson(Map<String, dynamic> json) {
    promotionSkinPoint = json['promotionSkinPoint'];
    promotionTagPoint = json['promotionTagPoint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['promotionSkinPoint'] = this.promotionSkinPoint;
    data['promotionTagPoint'] = this.promotionTagPoint;
    return data;
  }
}

// 
class MiaoshaInfo {
  String icon;
  int state;
  String seckillType;

  bool miaosha;
  String miaoshaRemainTime;
  String title;

  MiaoshaInfo({this.icon, this.state, this.seckillType, this.miaosha, this.miaoshaRemainTime, this.title});

  MiaoshaInfo.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    state = json['state'];
    seckillType = json['seckillType'];

    miaosha = json['miaosha'];
    miaoshaRemainTime = json['miaoshaRemainTime'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['state'] = this.state;
    data['seckillType'] = this.seckillType;

    data['miaosha'] = this.miaosha;
    data['miaoshaRemainTime'] = this.miaoshaRemainTime;
    data['title'] = this.title;
    return data;
  }
}

// 
class PointInfo {
  bool isShowAr;
  String trustworthy;

  PointInfo({this.isShowAr, this.trustworthy});

  PointInfo.fromJson(Map<String, dynamic> json) {
    isShowAr = json['isShowAr'];
    trustworthy = json['trustworthy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isShowAr'] = this.isShowAr;
    data['trustworthy'] = this.trustworthy;
    return data;
  }
}

// 
class RecommendToast {
  List<Recommends> recommends;
  String toastExplain;
  String url;

  RecommendToast({this.recommends, this.toastExplain, this.url});

  RecommendToast.fromJson(Map<String, dynamic> json) {
    if (json['recommends'] != null) {
      recommends = new List<Recommends>();
      json['recommends'].forEach((v) {
        recommends.add(new Recommends.fromJson(v));
      });
    }
    toastExplain = json['toastExplain'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.recommends != null) {
      data['recommends'] = this.recommends.map((v) => v.toJson()).toList();
    }
    data['toastExplain'] = this.toastExplain;
    data['url'] = this.url;
    return data;
  }
}

// 
class Recommends {
  String image;
  String url;

  Recommends({this.image, this.url});

  Recommends.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['image'] = this.image;
    data['url'] = this.url;
    return data;
  }
}

// 
class YanBaoInfo {
  String yanBaoDetailUrl;
  List<YanBaoList> yanBaoList;
  String yanBaoTitle;
  String yanBaoUrl;

  YanBaoInfo({this.yanBaoDetailUrl, this.yanBaoList, this.yanBaoTitle, this.yanBaoUrl});

  YanBaoInfo.fromJson(Map<String, dynamic> json) {
    yanBaoDetailUrl = json['yanBaoDetailUrl'];
    if (json['yanBaoList'] != null) {
      yanBaoList = new List<YanBaoList>();
      json['yanBaoList'].forEach((v) {
        yanBaoList.add(new YanBaoList.fromJson(v));
      });
    }
    yanBaoTitle = json['yanBaoTitle'];
    yanBaoUrl = json['yanBaoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yanBaoDetailUrl'] = this.yanBaoDetailUrl;
    if (this.yanBaoList != null) {
      data['yanBaoList'] = this.yanBaoList.map((v) => v.toJson()).toList();
    }
    data['yanBaoTitle'] = this.yanBaoTitle;
    data['yanBaoUrl'] = this.yanBaoUrl;
    return data;
  }
}

// 
class YanBaoList {
  List<Products> products;
  String sortName;
  int productId;
  String imgurl;

  YanBaoList({this.products, this.sortName, this.productId, this.imgurl});

  YanBaoList.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
    sortName = json['sortName'];
    productId = json['productId'];
    imgurl = json['imgurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    data['sortName'] = this.sortName;
    data['productId'] = this.productId;
    data['imgurl'] = this.imgurl;
    return data;
  }
}


// 
class Products {
  String price;

  String sortName;
  String tip;
  int platformPid;
  String discount;

  Products({this.price, this.sortName, this.tip, this.platformPid, this.discount});

  Products.fromJson(Map<String, dynamic> json) {
    price = json['price'];

    sortName = json['sortName'];
    tip = json['tip'];
    platformPid = json['platformPid'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;

    data['sortName'] = this.sortName;
    data['tip'] = this.tip;
    data['platformPid'] = this.platformPid;
    data['discount'] = this.discount;
    return data;
  }
}

// 
class WareImage {
  String share;
  String big;
  String small;

  WareImage({this.share, this.big, this.small});

  WareImage.fromJson(Map<String, dynamic> json) {
    share = json['share'];
    big = json['big'];
    small = json['small'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['share'] = this.share;
    data['big'] = this.big;
    data['small'] = this.small;
    return data;
  }
}

// 
class JdSerPlusInfo {
  List<JdSerPlusList> jdSerPlusList;
  String jdSerPlusUrl;
  String jdSerPlusTitle;

  JdSerPlusInfo({this.jdSerPlusList, this.jdSerPlusUrl, this.jdSerPlusTitle});

  JdSerPlusInfo.fromJson(Map<String, dynamic> json) {
    if (json['jdSerPlusList'] != null) {
      jdSerPlusList = new List<JdSerPlusList>();
      json['jdSerPlusList'].forEach((v) {
        jdSerPlusList.add(new JdSerPlusList.fromJson(v));
      });
    }
    jdSerPlusUrl = json['jdSerPlusUrl'];
    jdSerPlusTitle = json['jdSerPlusTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jdSerPlusList != null) {
      data['jdSerPlusList'] = this.jdSerPlusList.map((v) => v.toJson()).toList();
    }
    data['jdSerPlusUrl'] = this.jdSerPlusUrl;
    data['jdSerPlusTitle'] = this.jdSerPlusTitle;
    return data;
  }
}

// 
class JdSerPlusList {
  String scIconUrl;
  int scId;

  String scName;
  List<JdSerPlusProducts> products;
  int scOrder;

  JdSerPlusList({this.scIconUrl, this.scId, this.scName, this.products, this.scOrder});

  JdSerPlusList.fromJson(Map<String, dynamic> json) {
    scIconUrl = json['scIconUrl'];
    scId = json['scId'];

    scName = json['scName'];
    if (json['products'] != null) {
      products = new List<JdSerPlusProducts>();
      json['products'].forEach((v) {
        products.add(new JdSerPlusProducts.fromJson(v));
      });
    }
    scOrder = json['scOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['scIconUrl'] = this.scIconUrl;
    data['scId'] = this.scId;

    data['scName'] = this.scName;
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    data['scOrder'] = this.scOrder;
    return data;
  }
}

class JdSerPlusProducts {
  String serviceSkuPrice;
  String serviceSkuShortName;
  int itemIndex;

  String serviceSkuAdWord;

  String serviceSku;

  JdSerPlusProducts({this.serviceSkuPrice, this.serviceSkuShortName, this.serviceSkuAdWord, this.itemIndex, this.serviceSku});

  JdSerPlusProducts.fromJson(Map<String, dynamic> json) {
    serviceSkuPrice = json['serviceSkuPrice'];

    serviceSkuShortName = json['serviceSkuShortName'];
    serviceSkuAdWord = json['serviceSkuAdWord'];
    itemIndex = json['itemIndex'];
    serviceSku = json['serviceSku'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serviceSkuPrice'] = this.serviceSkuPrice;

    data['serviceSkuShortName'] = this.serviceSkuShortName;
    data['serviceSkuAdWord'] = this.serviceSkuAdWord;
    data['itemIndex'] = this.itemIndex;
    data['serviceSku'] = this.serviceSku;
    return data;
  }
}


// 
class DefineSkinChange {
  String imageUrl;
  String infoBoxTextColor;
  String cdTextColor;
  String infoBoxColor;
  String cdBackColor;
  String infoBoxPell;
  String cdNumColor;
  String cdNumBoxColor;

  DefineSkinChange(
      {this.imageUrl,
      this.infoBoxTextColor,
      this.cdTextColor,
      this.infoBoxColor,
      this.cdBackColor,
      this.infoBoxPell,
      this.cdNumColor,
      this.cdNumBoxColor});

  DefineSkinChange.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    infoBoxTextColor = json['infoBoxTextColor'];
    cdTextColor = json['cdTextColor'];
    infoBoxColor = json['infoBoxColor'];
    cdBackColor = json['cdBackColor'];
    infoBoxPell = json['infoBoxPell'];
    cdNumColor = json['cdNumColor'];
    cdNumBoxColor = json['cdNumBoxColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['infoBoxTextColor'] = this.infoBoxTextColor;
    data['cdTextColor'] = this.cdTextColor;
    data['infoBoxColor'] = this.infoBoxColor;
    data['cdBackColor'] = this.cdBackColor;
    data['infoBoxPell'] = this.infoBoxPell;
    data['cdNumColor'] = this.cdNumColor;
    data['cdNumBoxColor'] = this.cdNumBoxColor;
    return data;
  }
}

// 
class ShareImgInfo {
  String shareLanguage;
  String promotionStr;
  String priceDes;
  bool markingOff;
  String priceUrl;
  String jprice;
  String secondPrice;

  ShareImgInfo(
      {this.shareLanguage,
      this.promotionStr,
      this.priceDes,
      this.markingOff,
      this.priceUrl,
      this.jprice,
      this.secondPrice});

  ShareImgInfo.fromJson(Map<String, dynamic> json) {
    shareLanguage = json['shareLanguage'];
    promotionStr = json['promotionStr'];
    priceDes = json['priceDes'];
    markingOff = json['markingOff'];
    priceUrl = json['priceUrl'];
    jprice = json['jprice'];
    secondPrice = json['secondPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shareLanguage'] = this.shareLanguage;
    data['promotionStr'] = this.promotionStr;
    data['priceDes'] = this.priceDes;
    data['markingOff'] = this.markingOff;
    data['priceUrl'] = this.priceUrl;
    data['jprice'] = this.jprice;
    data['secondPrice'] = this.secondPrice;
    return data;
  }
}

// 
class WareInfo {
  String skuId;
  String venderId;
  String name;

  WareInfo({this.skuId, this.venderId, this.name});

  WareInfo.fromJson(Map<String, dynamic> json) {
    skuId = json['skuId'];
    venderId = json['venderId'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skuId'] = this.skuId;
    data['venderId'] = this.venderId;
    data['name'] = this.name;
    return data;
  }
}

// 
class Property {
  bool easyBuy;
  bool isShowShopNameB;
  String isFlimPrint;
  bool isPop;
  bool isRx;
  bool isOP;
  bool isEncrypt;
  String treatyIntroUrl;
  bool isShowBarrage;
  bool isCollect;
  AddAndSubToast addAndSubToast;
  String virtualCardUrl;
  bool isFxyl;
  bool isJx;
  int buyMaxNum;
  bool showEmptyPrice;
  String chatUrl;
  bool evaluateTabEnable;
  String wareImageTest;
  bool noStockOrder;
  bool opForIos;
  int suitABTest;
  bool androidImageSwitch;
  bool isJzfp;
  bool isRegularPrice;
  String treatyIntroText;
  String category;
  bool stockNotice;
  bool isRegisterUser;
  String shareUrl;
  bool recTabEnable;
  bool cartFlag;
  bool isEasyBuyPrice;
  String isOTC;

  Property(
      {this.easyBuy,
      this.isShowShopNameB,
      this.isFlimPrint,
      this.isPop,
      this.isRx,
      this.isOP,
      this.isEncrypt,
      this.treatyIntroUrl,
      this.isShowBarrage,
      this.isCollect,
      this.addAndSubToast,
      this.virtualCardUrl,
      this.isFxyl,
      this.isJx,
      this.buyMaxNum,
      this.showEmptyPrice,
      this.chatUrl,
      this.evaluateTabEnable,
      this.wareImageTest,
      this.noStockOrder,
      this.opForIos,
      this.suitABTest,
      this.androidImageSwitch,
      this.isJzfp,
      this.isRegularPrice,
      this.treatyIntroText,
      this.category,
      this.stockNotice,
      this.isRegisterUser,
      this.shareUrl,
      this.recTabEnable,
      this.cartFlag,
      this.isEasyBuyPrice,
      this.isOTC});

  Property.fromJson(Map<String, dynamic> json) {
    easyBuy = json['easyBuy'];
    isShowShopNameB = json['isShowShopNameB'];
    isFlimPrint = json['isFlimPrint'];
    isPop = json['isPop'];
    isRx = json['isRx'];
    isOP = json['isOP'];
    isEncrypt = json['isEncrypt'];
    treatyIntroUrl = json['treatyIntroUrl'];
    isShowBarrage = json['isShowBarrage'];
    isCollect = json['isCollect'];
    addAndSubToast = json['addAndSubToast'] != null ? new AddAndSubToast.fromJson(json['addAndSubToast']) : null;
    virtualCardUrl = json['virtualCardUrl'];
    isFxyl = json['isFxyl'];
    isJx = json['isJx'];
    buyMaxNum = json['buyMaxNum'];
    showEmptyPrice = json['showEmptyPrice'];
    chatUrl = json['chatUrl'];
    evaluateTabEnable = json['evaluateTabEnable'];
    wareImageTest = json['wareImageTest'];
    noStockOrder = json['noStockOrder'];
    opForIos = json['opForIos'];
    suitABTest = json['suitABTest'];
    androidImageSwitch = json['androidImageSwitch'];
    isJzfp = json['isJzfp'];
    isRegularPrice = json['isRegularPrice'];
    treatyIntroText = json['treatyIntroText'];
    category = json['category'];
    stockNotice = json['stockNotice'];
    isRegisterUser = json['isRegisterUser'];
    shareUrl = json['shareUrl'];
    recTabEnable = json['recTabEnable'];
    cartFlag = json['cartFlag'];
    isEasyBuyPrice = json['isEasyBuyPrice'];
    isOTC = json['isOTC'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['easyBuy'] = this.easyBuy;
    data['isShowShopNameB'] = this.isShowShopNameB;
    data['isFlimPrint'] = this.isFlimPrint;
    data['isPop'] = this.isPop;
    data['isRx'] = this.isRx;
    data['isOP'] = this.isOP;
    data['isEncrypt'] = this.isEncrypt;
    data['treatyIntroUrl'] = this.treatyIntroUrl;
    data['isShowBarrage'] = this.isShowBarrage;
    data['isCollect'] = this.isCollect;
    if (this.addAndSubToast != null) {
      data['addAndSubToast'] = this.addAndSubToast.toJson();
    }
    data['virtualCardUrl'] = this.virtualCardUrl;
    data['isFxyl'] = this.isFxyl;
    data['isJx'] = this.isJx;
    data['buyMaxNum'] = this.buyMaxNum;
    data['showEmptyPrice'] = this.showEmptyPrice;
    data['chatUrl'] = this.chatUrl;
    data['evaluateTabEnable'] = this.evaluateTabEnable;
    data['wareImageTest'] = this.wareImageTest;
    data['noStockOrder'] = this.noStockOrder;
    data['opForIos'] = this.opForIos;
    data['suitABTest'] = this.suitABTest;
    data['androidImageSwitch'] = this.androidImageSwitch;
    data['isJzfp'] = this.isJzfp;
    data['isRegularPrice'] = this.isRegularPrice;
    data['treatyIntroText'] = this.treatyIntroText;
    data['category'] = this.category;
    data['stockNotice'] = this.stockNotice;
    data['isRegisterUser'] = this.isRegisterUser;
    data['shareUrl'] = this.shareUrl;
    data['recTabEnable'] = this.recTabEnable;
    data['cartFlag'] = this.cartFlag;
    data['isEasyBuyPrice'] = this.isEasyBuyPrice;
    data['isOTC'] = this.isOTC;
    return data;
  }
}

// 
class AddAndSubToast {
  String lowestToastText;

  AddAndSubToast({this.lowestToastText});

  AddAndSubToast.fromJson(Map<String, dynamic> json) {
    lowestToastText = json['lowestToastText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lowestToastText'] = this.lowestToastText;
    return data;
  }
}

// 
class AbTestInfo {
  bool noBotmShop;
  bool easyDelAB;
  bool rankYhTag;
  bool newuserFreeAb;
  bool toABTest;
  bool specialSelectAB;
  String shareM;
  int skuSource;
  bool shopExtendsAb;
  bool showBuyLayer;
  bool evaluateAB;
  bool newUser;
  String shopABTest;
  bool recommendYhTag;
  String hospitalAB;

  String shopPromotionAB;
  bool recommendPopup;
  bool feedBackAB;
  CollectABInfo collectABInfo;
  bool shareShield;
  int packABTest;
  bool shopCardTypeAb;
  String attentionAB;
  bool shopIntensifyAB;

  AbTestInfo(
      {this.noBotmShop,
      this.easyDelAB,
      this.rankYhTag,
      this.newuserFreeAb,
      this.toABTest,
      this.specialSelectAB,
      this.shareM,
      this.skuSource,
      this.shopExtendsAb,
      this.showBuyLayer,
      this.evaluateAB,
      this.newUser,
      this.shopABTest,
      this.recommendYhTag,
      this.hospitalAB,
      this.shopPromotionAB,
      this.recommendPopup,
      this.feedBackAB,
      this.collectABInfo,
      this.shareShield,
      this.packABTest,
      this.shopCardTypeAb,
      this.attentionAB,
      this.shopIntensifyAB});

  AbTestInfo.fromJson(Map<String, dynamic> json) {
    noBotmShop = json['noBotmShop'];
    easyDelAB = json['easyDelAB'];
    rankYhTag = json['rankYhTag'];
    newuserFreeAb = json['newuserFreeAb'];
    toABTest = json['toABTest'];
    specialSelectAB = json['specialSelectAB'];
    shareM = json['shareM'];
    skuSource = json['skuSource'];
    shopExtendsAb = json['shopExtendsAb'];
    showBuyLayer = json['showBuyLayer'];
    evaluateAB = json['evaluateAB'];
    newUser = json['newUser'];
    shopABTest = json['shopABTest'];
    recommendYhTag = json['recommendYhTag'];
    hospitalAB = json['hospitalAB'];

    shopPromotionAB = json['shopPromotionAB'];
    recommendPopup = json['recommendPopup'];
    feedBackAB = json['feedBackAB'];
    collectABInfo = json['collectABInfo'] != null ? new CollectABInfo.fromJson(json['collectABInfo']) : null;
    shareShield = json['shareShield'];
    packABTest = json['packABTest'];
    shopCardTypeAb = json['shopCardTypeAb'];
    attentionAB = json['attentionAB'];
    shopIntensifyAB = json['shopIntensifyAB'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noBotmShop'] = this.noBotmShop;
    data['easyDelAB'] = this.easyDelAB;
    data['rankYhTag'] = this.rankYhTag;
    data['newuserFreeAb'] = this.newuserFreeAb;
    data['toABTest'] = this.toABTest;
    data['specialSelectAB'] = this.specialSelectAB;
    data['shareM'] = this.shareM;
    data['skuSource'] = this.skuSource;
    data['shopExtendsAb'] = this.shopExtendsAb;
    data['showBuyLayer'] = this.showBuyLayer;
    data['evaluateAB'] = this.evaluateAB;
    data['newUser'] = this.newUser;
    data['shopABTest'] = this.shopABTest;
    data['recommendYhTag'] = this.recommendYhTag;
    data['hospitalAB'] = this.hospitalAB;

    data['shopPromotionAB'] = this.shopPromotionAB;
    data['recommendPopup'] = this.recommendPopup;
    data['feedBackAB'] = this.feedBackAB;
    if (this.collectABInfo != null) {
      data['collectABInfo'] = this.collectABInfo.toJson();
    }
    data['shareShield'] = this.shareShield;
    data['packABTest'] = this.packABTest;
    data['shopCardTypeAb'] = this.shopCardTypeAb;
    data['attentionAB'] = this.attentionAB;
    data['shopIntensifyAB'] = this.shopIntensifyAB;
    return data;
  }
}

// 
class CollectABInfo {
  bool titleABTest;

  bool bottom3ABTest;
  bool bottom4ABTest;

  CollectABInfo({this.titleABTest, this.bottom3ABTest, this.bottom4ABTest});

  CollectABInfo.fromJson(Map<String, dynamic> json) {
    titleABTest = json['titleABTest'];

    bottom3ABTest = json['bottom3ABTest'];
    bottom4ABTest = json['bottom4ABTest'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titleABTest'] = this.titleABTest;

    data['bottom3ABTest'] = this.bottom3ABTest;
    data['bottom4ABTest'] = this.bottom4ABTest;
    return data;
  }
}

// 
class EventParam {
  String sep;

  EventParam({this.sep});

  EventParam.fromJson(Map<String, dynamic> json) {
    sep = json['sep'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sep'] = this.sep;
    return data;
  }
}

// 
class ColorSizeInfo {
  List<ColorSize> colorSize;
  String colorSizeTips;

  ColorSizeInfo({this.colorSize, this.colorSizeTips});

  ColorSizeInfo.fromJson(Map<String, dynamic> json) {
    if (json['colorSize'] != null) {
      colorSize = new List<ColorSize>();
      json['colorSize'].forEach((v) {
        colorSize.add(new ColorSize.fromJson(v));
      });
    }
    colorSizeTips = json['colorSizeTips'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.colorSize != null) {
      data['colorSize'] = this.colorSize.map((v) => v.toJson()).toList();
    }
    data['colorSizeTips'] = this.colorSizeTips;
    return data;
  }
}

// 
class ColorSize {
  String title;
  List<Buttons> buttons;

  ColorSize({this.title, this.buttons});

  ColorSize.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['buttons'] != null) {
      buttons = new List<Buttons>();
      json['buttons'].forEach((v) {
        buttons.add(new Buttons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.buttons != null) {
      data['buttons'] = this.buttons.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// 
class Buttons {
  String text;
  String no;
  List<String> skuList;

  Buttons({this.text, this.no, this.skuList});

  Buttons.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    no = json['no'];
    skuList = json['skuList'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['no'] = this.no;
    data['skuList'] = this.skuList;
    return data;
  }
}

// 
class ShopInfo {
  CustomerService customerService;
  Shop shop;

  ShopInfo({this.customerService, this.shop});

  ShopInfo.fromJson(Map<String, dynamic> json) {
    customerService = json['customerService'] != null ? new CustomerService.fromJson(json['customerService']) : null;
    shop = json['shop'] != null ? new Shop.fromJson(json['shop']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customerService != null) {
      data['customerService'] = this.customerService.toJson();
    }
    if (this.shop != null) {
      data['shop'] = this.shop.toJson();
    }
    return data;
  }
}

// 
class CustomerService {
  HotLineInfo hotLineInfo;
  bool hasChat;
  bool hasJimi;
  String allGoodJumpUrl;
  ChatInfo chatInfo;
  String mLink;
  String inShopLookJumpUrl;
  bool online;

  CustomerService(
      {this.hotLineInfo,
      this.hasChat,
      this.hasJimi,
      this.allGoodJumpUrl,
      this.chatInfo,
      this.mLink,
      this.inShopLookJumpUrl,
      this.online});

  CustomerService.fromJson(Map<String, dynamic> json) {
    hotLineInfo = json['hotLineInfo'] != null ? new HotLineInfo.fromJson(json['hotLineInfo']) : null;
    hasChat = json['hasChat'];
    hasJimi = json['hasJimi'];
    allGoodJumpUrl = json['allGoodJumpUrl'];
    chatInfo = json['chatInfo'] != null ? new ChatInfo.fromJson(json['chatInfo']) : null;
    mLink = json['mLink'];
    inShopLookJumpUrl = json['inShopLookJumpUrl'];
    online = json['online'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotLineInfo != null) {
      data['hotLineInfo'] = this.hotLineInfo.toJson();
    }
    data['hasChat'] = this.hasChat;
    data['hasJimi'] = this.hasJimi;
    data['allGoodJumpUrl'] = this.allGoodJumpUrl;
    if (this.chatInfo != null) {
      data['chatInfo'] = this.chatInfo.toJson();
    }
    data['mLink'] = this.mLink;
    data['inShopLookJumpUrl'] = this.inShopLookJumpUrl;
    data['online'] = this.online;
    return data;
  }
}

// 
class HotLineInfo {
  String hotLinePhoneExtend;
  String hotLineContent;
  String hotLineService;

  String hotLinePhone;

  HotLineInfo({this.hotLinePhoneExtend, this.hotLineContent, this.hotLineService, this.hotLinePhone});

  HotLineInfo.fromJson(Map<String, dynamic> json) {
    hotLinePhoneExtend = json['hotLinePhoneExtend'];
    hotLineContent = json['hotLineContent'];
    hotLineService = json['hotLineService'];

    hotLinePhone = json['hotLinePhone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hotLinePhoneExtend'] = this.hotLinePhoneExtend;
    data['hotLineContent'] = this.hotLineContent;
    data['hotLineService'] = this.hotLineService;

    data['hotLinePhone'] = this.hotLinePhone;
    return data;
  }
}

// 
class ChatInfo {
  String shopText;
  String allGoodText;

  String bottomText;
  String allGoodIcon;
  String bottomIcon;
  String shopIcon;
  bool isBubble;

  ChatInfo(
      {this.shopText,
      this.allGoodText,
      this.bottomText,
      this.allGoodIcon,
      this.bottomIcon,
      this.shopIcon,
      this.isBubble});

  ChatInfo.fromJson(Map<String, dynamic> json) {
    shopText = json['shopText'];
    allGoodText = json['allGoodText'];

    bottomText = json['bottomText'];
    allGoodIcon = json['allGoodIcon'];
    bottomIcon = json['bottomIcon'];
    shopIcon = json['shopIcon'];
    isBubble = json['isBubble'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shopText'] = this.shopText;
    data['allGoodText'] = this.allGoodText;

    data['bottomText'] = this.bottomText;
    data['allGoodIcon'] = this.allGoodIcon;
    data['bottomIcon'] = this.bottomIcon;
    data['shopIcon'] = this.shopIcon;
    data['isBubble'] = this.isBubble;
    return data;
  }
}

// 
class Shop {
  int shopActivityTotalNum;
  String skuText;
  List<Promotions> promotions;
  int score;
  int efficiencyScore;
  int followCount;
  String afterSaleGrade;
  String afterSaleTxt;
  int avgEfficiencyScore;
  int shopId;
  int promotionNum;
  String shopStarTxt;
  String squareLogo;
  String shopStateText;
  int cateGoodShop;
  String followText;

  String serverText;
  int cardType;
  String afterSaleScore;
  String scoreRankRateGrade;
  bool hasCoupon;
  int avgServiceScore;
  String giftIcon;
  int globalGoodShop;
  int goodShop;
  String hotcatestr;
  String signboardUrl;
  String logisticsScore;
  List<Hotcates> hotcates;
  String logisticsTxt;
  String evaluateTxt;
  bool isSquareLogo;
  bool diamond;
  String name;
  String evaluateScore;
  int serviceScore;
  String logo;
  String logisticsText;
  int avgWareScore;
  String evaluateGrade;
  String nameB;
  int totalNum;
  int newNum;
  String logisticsGrade;
  String venderType;
  String shopImage;
  String skuCntText;
  String scoreText;
  String telephone;
  int wareScore;
  String brief;

  Shop(
      {this.shopActivityTotalNum,
      this.skuText,
      this.promotions,
      this.score,
      this.efficiencyScore,
      this.followCount,
      this.afterSaleGrade,
      this.afterSaleTxt,
      this.avgEfficiencyScore,
      this.shopId,
      this.promotionNum,
      this.shopStarTxt,
      this.squareLogo,
      this.shopStateText,
      this.cateGoodShop,
      this.followText,
      this.serverText,
      this.cardType,
      this.afterSaleScore,
      this.scoreRankRateGrade,
      this.hasCoupon,
      this.avgServiceScore,
      this.giftIcon,
      this.globalGoodShop,
      this.goodShop,
      this.hotcatestr,
      this.signboardUrl,
      this.logisticsScore,
      this.hotcates,
      this.logisticsTxt,
      this.evaluateTxt,
      this.isSquareLogo,
      this.diamond,
      this.name,
      this.evaluateScore,
      this.serviceScore,
      this.logo,
      this.logisticsText,
      this.avgWareScore,
      this.evaluateGrade,
      this.nameB,
      this.totalNum,
      this.newNum,
      this.logisticsGrade,
      this.venderType,
      this.shopImage,
      this.skuCntText,
      this.scoreText,
      this.telephone,
      this.wareScore,
      this.brief});

  Shop.fromJson(Map<String, dynamic> json) {
    shopActivityTotalNum = json['shopActivityTotalNum'];
    skuText = json['skuText'];
    if (json['promotions'] != null) {
      promotions = new List<Promotions>();
      json['promotions'].forEach((v) {
        promotions.add(new Promotions.fromJson(v));
      });
    }
    score = json['score'];
    efficiencyScore = json['efficiencyScore'];
    followCount = json['followCount'];
    afterSaleGrade = json['afterSaleGrade'];
    afterSaleTxt = json['afterSaleTxt'];
    avgEfficiencyScore = json['avgEfficiencyScore'];
    shopId = json['shopId'];
    promotionNum = json['promotionNum'];
    shopStarTxt = json['shopStarTxt'];
    squareLogo = json['squareLogo'];
    shopStateText = json['shopStateText'];
    cateGoodShop = json['cateGoodShop'];
    followText = json['followText'];

    serverText = json['serverText'];
    cardType = json['cardType'];
    afterSaleScore = json['afterSaleScore'];
    scoreRankRateGrade = json['scoreRankRateGrade'];
    hasCoupon = json['hasCoupon'];
    avgServiceScore = json['avgServiceScore'];
    giftIcon = json['giftIcon'];
    globalGoodShop = json['globalGoodShop'];
    goodShop = json['goodShop'];
    hotcatestr = json['hotcatestr'];
    signboardUrl = json['signboardUrl'];
    logisticsScore = json['logisticsScore'];
    if (json['hotcates'] != null) {
      hotcates = new List<Hotcates>();
      json['hotcates'].forEach((v) {
        hotcates.add(new Hotcates.fromJson(v));
      });
    }
    logisticsTxt = json['logisticsTxt'];
    evaluateTxt = json['evaluateTxt'];
    isSquareLogo = json['isSquareLogo'];
    diamond = json['diamond'];
    name = json['name'];
    evaluateScore = json['evaluateScore'];
    serviceScore = json['serviceScore'];
    logo = json['logo'];
    logisticsText = json['logisticsText'];
    avgWareScore = json['avgWareScore'];
    evaluateGrade = json['evaluateGrade'];
    nameB = json['nameB'];
    totalNum = json['totalNum'];
    newNum = json['newNum'];
    logisticsGrade = json['logisticsGrade'];
    venderType = json['venderType'];
    shopImage = json['shopImage'];
    skuCntText = json['skuCntText'];
    scoreText = json['scoreText'];
    telephone = json['telephone'];
    wareScore = json['wareScore'];
    brief = json['brief'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shopActivityTotalNum'] = this.shopActivityTotalNum;
    data['skuText'] = this.skuText;
    if (this.promotions != null) {
      data['promotions'] = this.promotions.map((v) => v.toJson()).toList();
    }
    data['score'] = this.score;
    data['efficiencyScore'] = this.efficiencyScore;
    data['followCount'] = this.followCount;
    data['afterSaleGrade'] = this.afterSaleGrade;
    data['afterSaleTxt'] = this.afterSaleTxt;
    data['avgEfficiencyScore'] = this.avgEfficiencyScore;
    data['shopId'] = this.shopId;
    data['promotionNum'] = this.promotionNum;
    data['shopStarTxt'] = this.shopStarTxt;
    data['squareLogo'] = this.squareLogo;
    data['shopStateText'] = this.shopStateText;
    data['cateGoodShop'] = this.cateGoodShop;
    data['followText'] = this.followText;

    data['serverText'] = this.serverText;
    data['cardType'] = this.cardType;
    data['afterSaleScore'] = this.afterSaleScore;
    data['scoreRankRateGrade'] = this.scoreRankRateGrade;
    data['hasCoupon'] = this.hasCoupon;
    data['avgServiceScore'] = this.avgServiceScore;
    data['giftIcon'] = this.giftIcon;
    data['globalGoodShop'] = this.globalGoodShop;
    data['goodShop'] = this.goodShop;
    data['hotcatestr'] = this.hotcatestr;
    data['signboardUrl'] = this.signboardUrl;
    data['logisticsScore'] = this.logisticsScore;
    if (this.hotcates != null) {
      data['hotcates'] = this.hotcates.map((v) => v.toJson()).toList();
    }
    data['logisticsTxt'] = this.logisticsTxt;
    data['evaluateTxt'] = this.evaluateTxt;
    data['isSquareLogo'] = this.isSquareLogo;
    data['diamond'] = this.diamond;
    data['name'] = this.name;
    data['evaluateScore'] = this.evaluateScore;
    data['serviceScore'] = this.serviceScore;
    data['logo'] = this.logo;
    data['logisticsText'] = this.logisticsText;
    data['avgWareScore'] = this.avgWareScore;
    data['evaluateGrade'] = this.evaluateGrade;
    data['nameB'] = this.nameB;
    data['totalNum'] = this.totalNum;
    data['newNum'] = this.newNum;
    data['logisticsGrade'] = this.logisticsGrade;
    data['venderType'] = this.venderType;
    data['shopImage'] = this.shopImage;
    data['skuCntText'] = this.skuCntText;
    data['scoreText'] = this.scoreText;
    data['telephone'] = this.telephone;
    data['wareScore'] = this.wareScore;
    data['brief'] = this.brief;
    return data;
  }
}

// 
class Promotions {
  String name;

  String url;

  Promotions({this.name, this.url});

  Promotions.fromJson(Map<String, dynamic> json) {
    name = json['name'];

    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;

    data['url'] = this.url;
    return data;
  }
}

// 
class Hotcates {
  int commendSkuId;
  String imgPath;

  int cid;
  String cname;

  Hotcates({this.commendSkuId, this.imgPath, this.cid, this.cname});

  Hotcates.fromJson(Map<String, dynamic> json) {
    commendSkuId = json['commendSkuId'];
    imgPath = json['imgPath'];

    cid = json['cid'];
    cname = json['cname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['commendSkuId'] = this.commendSkuId;
    data['imgPath'] = this.imgPath;

    data['cid'] = this.cid;
    data['cname'] = this.cname;
    return data;
  }
}

// 
class Suit {
  String mainSkuPicUrl;
  String suitMark;
  int mainSkuId;
  List<ItemList> itemList;
  String domain;
  String suitNumText;

  String discountMark;
  String mainSkuName;

  Suit(
      {this.mainSkuPicUrl,
      this.suitMark,
      this.mainSkuId,
      this.itemList,
      this.domain,
      this.suitNumText,
      this.discountMark,
      this.mainSkuName});

  Suit.fromJson(Map<String, dynamic> json) {
    mainSkuPicUrl = json['mainSkuPicUrl'];
    suitMark = json['suitMark'];
    mainSkuId = json['mainSkuId'];
    if (json['itemList'] != null) {
      itemList = new List<ItemList>();
      json['itemList'].forEach((v) {
        itemList.add(new ItemList.fromJson(v));
      });
    }
    domain = json['domain'];
    suitNumText = json['suitNumText'];

    discountMark = json['discountMark'];
    mainSkuName = json['mainSkuName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mainSkuPicUrl'] = this.mainSkuPicUrl;
    data['suitMark'] = this.suitMark;
    data['mainSkuId'] = this.mainSkuId;
    if (this.itemList != null) {
      data['itemList'] = this.itemList.map((v) => v.toJson()).toList();
    }
    data['domain'] = this.domain;
    data['suitNumText'] = this.suitNumText;

    data['discountMark'] = this.discountMark;
    data['mainSkuName'] = this.mainSkuName;
    return data;
  }
}

// 
class ItemList {
  int originalSuitType;
  String packListPrice;
  int packId;
  List<ProductList> productList;
  String packType;

  String packPrice;
  String packName;

  ItemList(
      {this.originalSuitType,
      this.packListPrice,
      this.packId,
      this.productList,
      this.packType,
      this.packPrice,
      this.packName});

  ItemList.fromJson(Map<String, dynamic> json) {
    originalSuitType = json['originalSuitType'];
    packListPrice = json['packListPrice'];
    packId = json['packId'];
    if (json['productList'] != null) {
      productList = new List<ProductList>();
      json['productList'].forEach((v) {
        productList.add(new ProductList.fromJson(v));
      });
    }
    packType = json['packType'];

    packPrice = json['packPrice'];
    packName = json['packName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['originalSuitType'] = this.originalSuitType;
    data['packListPrice'] = this.packListPrice;
    data['packId'] = this.packId;
    if (this.productList != null) {
      data['productList'] = this.productList.map((v) => v.toJson()).toList();
    }
    data['packType'] = this.packType;

    data['packPrice'] = this.packPrice;
    data['packName'] = this.packName;
    return data;
  }
}

// 
class ProductList {
  String skuPicUrl;
  String name;
  int skuId;

  String skuName;

  ProductList({this.skuPicUrl, this.name, this.skuId, this.skuName});

  ProductList.fromJson(Map<String, dynamic> json) {
    skuPicUrl = json['skuPicUrl'];
    name = json['name'];
    skuId = json['skuId'];

    skuName = json['skuName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skuPicUrl'] = this.skuPicUrl;
    data['name'] = this.name;
    data['skuId'] = this.skuId;

    data['skuName'] = this.skuName;
    return data;
  }
}

// 
class PromotionInfo {
  bool isBargain;
  String prompt;

  PromotionInfo({this.isBargain, this.prompt});

  PromotionInfo.fromJson(Map<String, dynamic> json) {
    isBargain = json['isBargain'];
    prompt = json['prompt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isBargain'] = this.isBargain;
    data['prompt'] = this.prompt;
    return data;
  }
}

// 
class WeightInfo {
  String content;

  String title;

  WeightInfo({this.content, this.title});

  WeightInfo.fromJson(Map<String, dynamic> json) {
    content = json['content'];

    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;

    data['title'] = this.title;
    return data;
  }
}

// 
class FlashInfo {
  int state;

  int cd;

  FlashInfo({this.state, this.cd});

  FlashInfo.fromJson(Map<String, dynamic> json) {
    state = json['state'];

    cd = json['cd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;

    data['cd'] = this.cd;
    return data;
  }
}

// ------ ------- ------ 自己手写太慢
//  // 
// class ItemInfoResponseEntity {
//   int code;
//   List<FloorsBean> floors;
//
//   ItemInfoResponseEntity(this.code, this.floors);
//
//   //不同的类使用不同的mixin即可
//   factory ItemInfoResponseEntity.fromJson(Map<String, dynamic> json) => _$ItemInfoResponseEntityFromJson(json);
//   Map<String, dynamic> toJson() => _$ItemInfoResponseEntityToJson(this);
// }
//  // 
// class FloorsBean {
//   DataBean data;
//
//   FloorsBean(this.data);
//
//   //不同的类使用不同的mixin即可
//   factory FloorsBean.fromJson(Map<String, dynamic> json) => _$FloorsBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$FloorsBeanToJson(this);
// }
//  // 
// class DataBean {
//   bool threeDSwitch;
//   VideoControlBean videoControl;
//   bool isShowAR;
//   String bgc;
//   PriceInfoBean priceInfo;
//   bool showAttentionPriceFloor;
//   bool showAttention;
//   AdBean ad;
//   String specBuryPoint;
//   String title;
//   SelectInfoBean selectInfo;
//   TrustworthyBean trustworthy;
//   PreferentialGuideBean preferentialGuide;
//   ActionsBean actions;
//   String selected;
//   DefaultAddrBean defaultAddr;
//   String stock;
//   String fare;
//   ServiceInfoBean serviceInfo;
//   bool isIcon;
//   UnitedRankBean unitedRank;
//   String eventId;
//   String text3;
//   String jumpUrl;
//   int tailIconH;
//   String text1;
//   String text2;
//   String text2C;
//   String text1C;
//   bool viewMore;
//   bool text1B;
//   String text3C;
//   String text3Bgc;
//   String tailIcon;
//   int jumpType;
//   int text1S;
//   String buried;
//   int text2S;
//   int text3S;
//   String recommend;
//   String priceLabel;
//   String tabUrl;
//   String rankName;
//   bool isOpenH5;
//   int rankType;
//   bool isOpenCar;
//   RecommendToastBean recommendToast;
//   bool isOpenNode;
//   bool isDesCbc;
//   YanBaoInfoBean yanBaoInfo;
//   DefineSkinChangeBean defineSkinChange;
//   ShareImgInfoBean shareImgInfo;
//   WareInfoBean wareInfo;
//   bool supportSale;
//   bool isOpen;
//   bool appointAndPresaleOpen;
//   bool abTest800;
//   ColorSizeInfoBean colorSizeInfo;
//   ShopInfoBean shopInfo;
//
//   List<CccKernelBean> CccKernel;
//   List<BizListBean> bizList;
//   List<ImgInfoBean> imgInfo;
//   List<WareImageBean> wareImage;
//
//   DataBean(
//       this.threeDSwitch,
//       this.videoControl,
//       this.isShowAR,
//       this.bgc,
//       this.priceInfo,
//       this.showAttentionPriceFloor,
//       this.showAttention,
//       this.ad,
//       this.specBuryPoint,
//       this.title,
//       this.selectInfo,
//       this.trustworthy,
//       this.preferentialGuide,
//       this.actions,
//       this.selected,
//       this.defaultAddr,
//       this.stock,
//       this.fare,
//       this.serviceInfo,
//       this.isIcon,
//       this.unitedRank,
//       this.eventId,
//       this.text3,
//       this.jumpUrl,
//       this.tailIconH,
//       this.text1,
//       this.text2,
//       this.text2C,
//       this.text1C,
//       this.viewMore,
//       this.text1B,
//       this.text3C,
//       this.text3Bgc,
//       this.tailIcon,
//       this.jumpType,
//       this.text1S,
//       this.buried,
//       this.text2S,
//       this.text3S,
//       this.recommend,
//       this.priceLabel,
//       this.tabUrl,
//       this.rankName,
//       this.isOpenH5,
//       this.rankType,
//       this.isOpenCar,
//       this.recommendToast,
//       this.isOpenNode,
//       this.isDesCbc,
//       this.yanBaoInfo,
//       this.defineSkinChange,
//       this.shareImgInfo,
//       this.wareInfo,
//       this.supportSale,
//       this.isOpen,
//       this.appointAndPresaleOpen,
//       this.abTest800,
//       this.colorSizeInfo,
//       this.shopInfo,
//       this.CccKernel,
//       this.bizList,
//       this.imgInfo,
//       this.wareImage);
//
//   //不同的类使用不同的mixin即可
//   factory DataBean.fromJson(Map<String, dynamic> json) => _$DataBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$DataBeanToJson(this);
// }
//  // 
// class VideoControlBean {
//   bool optimize;
//   bool autoPlay;
//   MasterVideoBean masterVideo;
//
//   VideoControlBean(this.optimize, this.autoPlay, this.masterVideo);
//
//   //不同的类使用不同的mixin即可
//   factory VideoControlBean.fromJson(Map<String, dynamic> json) => _$VideoControlBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$VideoControlBeanToJson(this);
// }
//  // 
// class MasterVideoBean {
//   /**
//    * playUrl : https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/v.f30.mp4?dockingId=12943a9e-481b-4cf7-a062-cfac52a7a2c1&storageSource=3
//    * duration : 60
//    * imageUrl : https://img.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/imageSampleSnapshot/1574669045_12981449.100_6008.jpg
//    * videoShare : {"class":"com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideoShare","microBlog":"我发现了一个精彩的视频，快来看看吧https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255","title":"这个小视频不错哦~","des":"我发现了一个精彩的视频，快来看看吧","url":"https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255"}
//    * videoId : 129653998
//    * class : com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideo
//    * videoDuration : 01'00"
//    */
//
//   String playUrl;
//   int duration;
//   String imageUrl;
//   VideoShareBean videoShare;
//   String videoId;
//   String videoDuration;
//
//   MasterVideoBean(this.playUrl, this.duration, this.imageUrl, this.videoShare, this.videoId, this.videoDuration);
//
//
//   //不同的类使用不同的mixin即可
//   factory MasterVideoBean.fromJson(Map<String, dynamic> json) => _$MasterVideoBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$MasterVideoBeanToJson(this);
// }
//  // 
// class VideoShareBean {
//   /**
//    * class : com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideoShare
//    * microBlog : 我发现了一个精彩的视频，快来看看吧https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255
//    * title : 这个小视频不错哦~
//    * des : 我发现了一个精彩的视频，快来看看吧
//    * url : https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255
//    */
//
//   String microBlog;
//   String title;
//   String des;
//   String url;
//
//   VideoShareBean(this.microBlog, this.title, this.des, this.url);
//
//   //不同的类使用不同的mixin即可
//   factory VideoShareBean.fromJson(Map<String, dynamic> json) => _$VideoShareBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$VideoShareBeanToJson(this);
// }
//  // 
// class PriceInfoBean {
//   /**
//    * saveMoney : 省330元
//    * originPrice : 4799.00
//    * jprice : 4469.00
//    */
//   String saveMoney;
//   double originPrice;
//   double jprice;
//
//   PriceInfoBean(this.saveMoney, this.originPrice, this.jprice);
//
//   //不同的类使用不同的mixin即可
//   factory PriceInfoBean.fromJson(Map<String, dynamic> json) => _$PriceInfoBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$PriceInfoBeanToJson(this);
// }
//  // 
// class AdBean {
//   /**
//    * adword : 【直降500元！现货当天发】12期免息，华为官方直供！
//       【赠】华为原装无线充+彩屏运动手环+双耳真无线蓝牙耳机+钢化膜等【Mate30pro5G】
//    * textColor : #8C8C8C
//    * color : #f23030
//    * newALContent : true
//    * hasFold : true
//    * class : com.jd.app.server.warecoresoa.domain.AdWordInfo.AdWordInfo
//    * adLinkContent : 查看>
//    * adLink : https://item.jd.com/59725365523.html
//    */
//
//   String adword;
//   String textColor;
//   String color;
//   bool newALContent;
//   bool hasFold;
//
//   String adLinkContent;
//   String adLink;
//
//   AdBean(this.adword, this.textColor, this.color, this.newALContent, this.hasFold, this.adLinkContent, this.adLink);
//
//   //不同的类使用不同的mixin即可
//   factory AdBean.fromJson(Map<String, dynamic> json) => _$AdBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$AdBeanToJson(this);
// }
//  // 
// class CccKernelBean {
//   /**
//    * icon : https://m.360buyimg.com/cc/jfs/t18391/185/1623415222/894/e4f01bb5/5ad09367N6054a929.png
//    * class : com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo
//    * paramValue : 2019年11月
//    * paramName : 上市时间
//    */
//
//   String icon;
//   String paramValue;
//   String paramName;
//
//   CccKernelBean(this.icon, this.paramValue, this.paramName);
//
//   //不同的类使用不同的mixin即可
//   factory CccKernelBean.fromJson(Map<String, dynamic> json) => _$CccKernelBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$CccKernelBeanToJson(this);
// }
//  // 
// class SelectInfoBean {
//   /**
//    * inTitle : 放心购服务
//    * gdImage : https://m.360buyimg.com/cc/jfs/t1/99381/10/14559/23398/5e663a40E04a3595d/28127312190b5f68.png
//    * imgUrl : https://m.360buyimg.com/cc/jfs/t1/39921/1/2586/7056/5cc17384E3360544f/ff4ec59f07836b1e.png
//    * dgImage : https://m.360buyimg.com/cc/jfs/t1/41681/22/12662/8785/5d5e5e21Ee8bdca91/d8c40eb6318f7f09.png
//    */
//
//   String inTitle;
//   String gdImage;
//   String imgUrl;
//   String dgImage;
//
//   SelectInfoBean(this.inTitle, this.gdImage, this.imgUrl, this.dgImage);
//
//
//   //不同的类使用不同的mixin即可
//   factory SelectInfoBean.fromJson(Map<String, dynamic> json) => _$SelectInfoBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$SelectInfoBeanToJson(this);
// }
//  // 
// class TrustworthyBean {
//   /**
//    * iconInDialog : https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png
//    * iconUrl : https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png
//    * iconListOne : [{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}]
//    * class : com.jd.app.server.warecoresoa.domain.icon.TrustworthyInfo
//    * guideJumpUrl : https://web.shop.jd.com/PurchaseAtEase/index.html
//    * type : p
//    * iconList : [{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}]
//    * guideText : 了解详情
//    * separator : ·
//    */
//
//   String iconInDialog;
//   String iconUrl;
//   String guideJumpUrl;
//   String type;
//   String guideText;
//   String separator;
//
//   List<IconListOneBean> iconListOne;
//   List<IconListBean> iconList;
//
//   TrustworthyBean(this.iconInDialog, this.iconUrl, this.guideJumpUrl, this.type, this.guideText, this.separator,
//       this.iconListOne, this.iconList);
//
//
//   //不同的类使用不同的mixin即可
//   factory TrustworthyBean.fromJson(Map<String, dynamic> json) => _$TrustworthyBeanromJson(json);
//   Map<String, dynamic> toJson() => _$TrustworthyBeanToJson(this);
// }
//  // 
// class IconListOneBean {
//   /**
//    * jichu : false
//    * text : 运费险
//    * imageUrl : https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png
//    * sortId : 7
//    * class : com.jd.app.server.warecoresoa.domain.icon.ServerIcon
//    * show : true
//    * tip : 送运费险
//    * iconType : right
//    */
//
//   bool jichu;
//   String text;
//   String imageUrl;
//   int sortId;
//   bool show;
//   String tip;
//   String iconType;
//
//   IconListOneBean(this.jichu, this.text, this.imageUrl, this.sortId, this.show, this.tip, this.iconType);
//
//   //不同的类使用不同的mixin即可
//   factory IconListOneBean.fromJson(Map<String, dynamic> json) => _$IconListOneBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$IconListOneBeanToJson(this);
// }
//  // 
// class IconListBean {
//   /**
//    * jichu : false
//    * text : 运费险
//    * imageUrl : https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png
//    * sortId : 7
//    * class : com.jd.app.server.warecoresoa.domain.icon.ServerIcon
//    * show : true
//    * tip : 送运费险
//    * iconType : right
//    */
//
//   bool jichu;
//   String text;
//   String imageUrl;
//   int sortId;
//   bool show;
//   String tip;
//   String iconType;
//
//   IconListBean(this.jichu, this.text, this.imageUrl, this.sortId, this.show, this.tip, this.iconType);
//
//   //不同的类使用不同的mixin即可
//   factory IconListBean.fromJson(Map<String, dynamic> json) => _$IconListBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$IconListBeanToJson(this);
//
//
// }
//  // 
// class PreferentialGuideBean {
//   /**
//    * iconCode : detail_var_045
//    * promotion : {"plusMark":"tab_var_124","gift":[{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57601351429","value":"华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"46447880993","value":"华为（HUAWEI）原装无线充电器 快充版 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"42223536637","value":"真无线蓝牙耳机 （以实物为准） 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"37431101133","value":"通用适配半屏钢化膜/软膜（因手机不同，图片仅供参考） 精美钢化膜（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57602649444","value":"彩屏版运动手环M4（颜色随机 以实物为准） 黑色（条件：购买1件及以上，赠完即止）"},{"text":"赠品","num":"1","link":"https://aco.m.jd.com?channel=phonepage","skuId":"","value":"体验卡免费领，多款APP免流，超大流量任性用，点击领取"}],"isTwoLine":true,"tip":"以下促销，可在购物车任选其一","activityTypes":["3","10","15"],"screenLiPurMap":{},"canReturnHaggleInfo":false,"activity":[{"value":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次","text":"限购","skuId":"","proSortNum":8,"link":"","proId":"73282401872","promoId":""},{"value":"满4509元减10元","text":"满减","skuId":"","proSortNum":4,"link":"","proId":"33890832767","promoId":"33890832767"}],"plusDiscountMap":{},"class":"com.jd.app.server.warecoresoa.domain.promotion.PromotionInfo","isBargain":false,"limitBuyInfo":{"limitNum":"0","noSaleFlag":"0","promotionText":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次"},"attach":[],"prompt":"1;2","tips":[],"normalMark":"tab_var_071"}
//    * whiteBarInfo : {"marketingText":"领立减80元优惠券，12期内免息","planInfos":[{"rate":"0.00","plan":12,"isMaxdiscount":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo","secondTitle":"无服务费","laterPay":"372.38","mainTitle":"¥372.38 x 12期","planFee":"0.00"}],"ava":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WhiteBarInfo","login":true,"url":"https://bt.jd.com/v3/mobile/rGuide_initGuideMobile?source=JD_zw&channelName=SXY&secondCode=&recommend=","btUser":false}
//    * couponInfo : []
//    * hasFinanceCoupon : false
//    */
//
//   String iconCode;
//   PromotionBean promotion;
//   WhiteBarInfoBean whiteBarInfo;
//
//   PreferentialGuideBean(this.iconCode, this.promotion, this.whiteBarInfo);
//
//   //不同的类使用不同的mixin即可
//   factory PreferentialGuideBean.fromJson(Map<String, dynamic> json) => _$PreferentialGuideBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$PreferentialGuideBeanToJson(this);
// }
//  // 
// class PromotionBean {
//   /**
//    * plusMark : tab_var_124
//    * gift : [{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57601351429","value":"华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"46447880993","value":"华为（HUAWEI）原装无线充电器 快充版 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"42223536637","value":"真无线蓝牙耳机 （以实物为准） 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"37431101133","value":"通用适配半屏钢化膜/软膜（因手机不同，图片仅供参考） 精美钢化膜（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57602649444","value":"彩屏版运动手环M4（颜色随机 以实物为准） 黑色（条件：购买1件及以上，赠完即止）"},{"text":"赠品","num":"1","link":"https://aco.m.jd.com?channel=phonepage","skuId":"","value":"体验卡免费领，多款APP免流，超大流量任性用，点击领取"}]
//    * isTwoLine : true
//    * tip : 以下促销，可在购物车任选其一
//    * activityTypes : ["3","10","15"]
//    * screenLiPurMap : {}
//    * canReturnHaggleInfo : false
//    * activity : [{"value":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次","text":"限购","skuId":"","proSortNum":8,"link":"","proId":"73282401872","promoId":""},{"value":"满4509元减10元","text":"满减","skuId":"","proSortNum":4,"link":"","proId":"33890832767","promoId":"33890832767"}]
//    * plusDiscountMap : {}
//    * class : com.jd.app.server.warecoresoa.domain.promotion.PromotionInfo
//    * isBargain : false
//    * limitBuyInfo : {"limitNum":"0","noSaleFlag":"0","promotionText":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次"}
//    * attach : []
//    * prompt : 1;2
//    * tips : []
//    * normalMark : tab_var_071
//    */
//
//   String plusMark;
//   bool isTwoLine;
//   String tip;
//   bool canReturnHaggleInfo;
//   bool isBargain;
//   String prompt;
//   String normalMark;
//   List<GiftBean> gift;
//   List<String> activityTypes;
//   List<ActivityBean> activity;
//
//   PromotionBean(this.plusMark, this.isTwoLine, this.tip, this.canReturnHaggleInfo, this.isBargain, this.prompt,
//       this.normalMark, this.gift, this.activityTypes, this.activity);
//
//   //不同的类使用不同的mixin即可
//   factory PromotionBean.fromJson(Map<String, dynamic> json) => _$PromotionBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$PromotionBeanToJson(this);
// }
//  // 
// class GiftBean {
//   /**
//    * proId : 101054392899
//    * text : 赠品
//    * num : 1
//    * link :
//    * skuId : 57601351429
//    * value : 华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）
//    */
//
//   String proId;
//   String text;
//   String num;
//   String skuId;
//   String value;
//
//   GiftBean(this.proId, this.text, this.num, this.skuId, this.value);
//
//   //不同的类使用不同的mixin即可
//   factory GiftBean.fromJson(Map<String, dynamic> json) => _$GiftBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$GiftBeanToJson(this);
//
// }
//  // 
// class ActivityBean {
//   /**
//    * value : 该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次
//    * text : 限购
//    * skuId :
//    * proSortNum : 8
//    * link :
//    * proId : 73282401872
//    * promoId :
//    */
//
//   String value;
//   String text;
//
//   ActivityBean(this.value, this.text);
//
//   //不同的类使用不同的mixin即可
//   factory ActivityBean.fromJson(Map<String, dynamic> json) => _$ActivityBeanFromJson(json);
//   Map<String, dynamic> toJson() => _$ActivityBeanToJson(this);
// }
//  // 
// class WhiteBarInfoBean {
//   /**
//    * marketingText : 领立减80元优惠券，12期内免息
//    * planInfos : [{"rate":"0.00","plan":12,"isMaxdiscount":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo","secondTitle":"无服务费","laterPay":"372.38","mainTitle":"¥372.38 x 12期","planFee":"0.00"}]
//    * ava : true
//    * class : com.jd.app.server.warecoresoa.domain.whitebar.WhiteBarInfo
//    * login : true
//    * url : https://bt.jd.com/v3/mobile/rGuide_initGuideMobile?source=JD_zw&channelName=SXY&secondCode=&recommend=
//    * btUser : false
//    */
//
//   String marketingText;
//   bool ava;
//   bool login;
//   String url;
//   bool btUser;
//   List<PlanInfosBean> planInfos;
//
//   WhiteBarInfoBean(this.marketingText, this.ava, this.login, this.url, this.btUser, this.planInfos);
// }
//  // 
// class PlanInfosBean {
//   /**
//    * rate : 0.00
//    * plan : 12
//    * isMaxdiscount : true
//    * class : com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo
//    * secondTitle : 无服务费
//    * laterPay : 372.38
//    * mainTitle : ¥372.38 x 12期
//    * planFee : 0.00
//    */
//
//   String rate;
//   int plan;
//   bool isMaxdiscount;
//   String secondTitle;
//   String laterPay;
//   String mainTitle;
//   String planFee;
//
//   PlanInfosBean(
//       this.rate, this.plan, this.isMaxdiscount, this.secondTitle, this.laterPay, this.mainTitle, this.planFee);
// }
//  // 
// class ActionsBean {
//   List<BizActsBean> bizActs;
//
//   ActionsBean(this.bizActs);
// }
//  // 
// class BizActsBean {
//   /**
//    * icon : https://m.360buyimg.com/cc/jfs/t1/17024/4/15356/2143/5caeb5efEf90f64a9/f4205d7302e4433c.png
//    * jumpType : 1
//    * truthBigSale : false
//    * desc : 旧品回收，免费估价，极速到账
//    * mustLogin : false
//    * bizKey : yjhx
//    * class : com.jd.app.server.warecoresoa.domain.activity.Activity
//    * url : https://huishou.m.jd.com/index?s=1&skuId=59788201255&cid1=9987&cid2=653&cid3=655&province=1&city=72&county=2839&source=3&activityType=1&commodityType=1&town=0&latitude=39.98642&longitude=116.47881
//    */
//
//   String icon;
//   int jumpType;
//   bool truthBigSale;
//   String desc;
//   bool mustLogin;
//   String bizKey;
//   String url;
//
//   BizActsBean(this.icon, this.jumpType, this.truthBigSale, this.desc, this.mustLogin, this.bizKey, this.url);
// }
//  // 
// class DefaultAddrBean {
//   /**
//    * provinceId : 1
//    * countyName : 四环到五环之间
//    * cityId : 72
//    * townName :
//    * cityName : 朝阳区
//    * class : com.jd.app.server.warecoresoa.domain.vo.AddressInfo
//    * townId : 0
//    * provinceName : 北京
//    * countyId : 2839
//    */
//
//   String provinceId;
//   String countyName;
//   String cityId;
//   String townName;
//   String cityName;
//   String townId;
//   String provinceName;
//   String countyId;
//
//   DefaultAddrBean(this.provinceId, this.countyName, this.cityId, this.townName, this.cityName, this.townId,
//       this.provinceName, this.countyId);
// }
//  // 
// class ServiceInfoBean {
//   /**
//    * class : com.jd.app.server.warecoresoa.domain.icon.ServiceInfo
//    * basic : {"iconList":[{"jichu":false,"text":"不可使用京券东券","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png","sortId":13,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品不可使用京券、东券","iconType":"exclamation"},{"jichu":false,"text":"7天无理由退货（激活后不支持）","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1918/274/1086575987/1970/bc766f2d/5680f4b3N24b48659.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持7天无理由退货(激活后不支持)","iconType":"right"},{"jichu":false,"text":"货到付款","imageUrl":"https://img30.360buyimg.com/mobilecms/g13/M06/10/11/rBEhUlLL13kIAAAAAAAEeT_oUHcAAHskQP_-boAAASR577.jpg","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持送货上门后再收款，支持现金、POS机刷卡等方式","iconType":"right"},{"jichu":false,"text":"店铺发货&售后","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2176/234/1856411458/2044/91ae040b/5680f585N70da96a6.png","sortId":6,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"由掌视界数码旗舰店发货并提供售后服务","iconType":"right"}],"class":"com.jd.app.server.warecoresoa.domain.icon.BasicServiceInfo","title":"基础服务"}
//    */
//
//   BasicBean basic;
//
//   ServiceInfoBean(this.basic);
// }
//  // 
// class BasicBean {
//   /**
//    * iconList : [{"jichu":false,"text":"不可使用京券东券","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png","sortId":13,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品不可使用京券、东券","iconType":"exclamation"},{"jichu":false,"text":"7天无理由退货（激活后不支持）","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1918/274/1086575987/1970/bc766f2d/5680f4b3N24b48659.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持7天无理由退货(激活后不支持)","iconType":"right"},{"jichu":false,"text":"货到付款","imageUrl":"https://img30.360buyimg.com/mobilecms/g13/M06/10/11/rBEhUlLL13kIAAAAAAAEeT_oUHcAAHskQP_-boAAASR577.jpg","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持送货上门后再收款，支持现金、POS机刷卡等方式","iconType":"right"},{"jichu":false,"text":"店铺发货&售后","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2176/234/1856411458/2044/91ae040b/5680f585N70da96a6.png","sortId":6,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"由掌视界数码旗舰店发货并提供售后服务","iconType":"right"}]
//    * class : com.jd.app.server.warecoresoa.domain.icon.BasicServiceInfo
//    * title : 基础服务
//    */
//
//   String title;
//   List<IconListBean> iconList;
//
//   BasicBean(this.title, this.iconList);
// }
//  // 
// class UnitedRankBean {
//   /**
//    * id : 231144950
//    * icon : icon
//    * jumpType : OPENAPP
//    * desc : 入选『夜拍出色的高清屏手机精选』
//    * titleImage : titleImage
//    * arrowImage : arrowImage
//    * rankType : 5
//    * bgImage : bgImage
//    * url : openapp.jdmobile://virtual?params={"modulename":"JDReactRankingList","des":"jdreactcommon","category":"jump","param":{"detailPageType":"2","innerIndex":2,"contentId":"231144950","fromSkuId":"59788201255"},"appname":"JDReactRankingList","ishidden":true,"fromName":"Productdetail","transparentenable":true}
//    */
//
//   String id;
//   String icon;
//   String jumpType;
//   String desc;
//   String titleImage;
//   String arrowImage;
//   int rankType;
//   String bgImage;
//   String url;
//
//   UnitedRankBean(this.id, this.icon, this.jumpType, this.desc, this.titleImage, this.arrowImage, this.rankType,
//       this.bgImage, this.url);
// }
//  // 
// class BizListBean {
//   /**
//    * icon : https://m.360buyimg.com/cc/jfs/t8746/206/1817663053/1477/344350f9/59bfa60fNd6d66c7c.png
//    * title : 手机靓号
//    * desc : 全国流量不限量
//    * mustLogin : false
//    * bizKey : redCard
//    * type : 1
//    * url : https://pro.m.jd.com/mall/active/37KLd8my2W19ekZLTHsz5WvEx7uu/index.html
//    * jumpData : {"bizType":2}
//    */
//
//   String icon;
//   String title;
//   String desc;
//   bool mustLogin;
//   String bizKey;
//   int type;
//   String url;
//
//   BizListBean(this.icon, this.title, this.desc, this.mustLogin, this.bizKey, this.type, this.url);
// }
//  // 
// class ImgInfoBean {
//   /**
//    * imgUrl : https://img12.360buyimg.com/img/jfs/t1/35794/7/2043/7048/5cb9ce74Eabf015ac/37b91e86245190d6.png
//    * imgJumpUrl : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=10
//    * imgJumpType : 1
//    * imgText : 移动电源
//    */
//
//   String imgUrl;
//   String imgJumpUrl;
//   int imgJumpType;
//   String imgText;
//
//   ImgInfoBean(this.imgUrl, this.imgJumpUrl, this.imgJumpType, this.imgText);
// }
//  // 
// class RecommendToastBean {
//   /**
//    * class : com.jd.app.server.warecoresoa.domain.recommendToast.RecommendInfo
//    * recommends : [{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t22450/43/1465607416/12172/beeff364/5b5ffa4cNf3ea7b03.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=10"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/61739/27/4121/1607/5d242719E90014906/6d75f8d3ea82f739.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=13"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/70227/9/4061/3654/5d2426c1E6d4ae927/8b8c24a49c60ff0c.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=16"}]
//    * toastExplain : 为您推荐品质配件
//    * url : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=
//    */
//
//   String toastExplain;
//   String url;
//   List<RecommendsBean> recommends;
//
//   RecommendToastBean(this.toastExplain, this.url, this.recommends);
// }
//  // 
// class RecommendsBean {
//   /**
//    * class : com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel
//    * image : https://img12.360buyimg.com/img/jfs/t22450/43/1465607416/12172/beeff364/5b5ffa4cNf3ea7b03.jpg
//    * url : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=10
//    */
//
//   String image;
//   String url;
//
//   RecommendsBean(this.image, this.url);
// }
//  // 
// class YanBaoInfoBean {
//   /**
//    * yanBaoDetailUrl : https://static.360buyimg.com/finance/mobile/insurance/warrantyServiceDesc/html/warrantyExtension.html?mainSkuId=59788201255&brandId=8557&thirdCategoryId=655&bindSkuId=
//    * yanBaoList : [{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"299.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修3年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224921668},{"price":"189.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修2年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224073273,"discount":"品质购 直降"},{"price":"216.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"首年全保换新","tip":"性能/意外故障一折换JD新机","platformPid":64019721974,"discount":"换新运费全免"}],"sortName":"全面保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t4543/105/4229305177/1459/b754e0ca/590c0c7dNfb7ce9fe.png"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"199.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"原厂碎屏保","tip":"1年意外导致屏幕、后盖碎免费更换","platformPid":55636841897,"discount":"华为官方"},{"price":"169.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保2年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":55150688951},{"price":"129.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保1年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":42227138196}],"sortName":"屏幕保护","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t30094/131/703993755/763/1abbf077/5bfb8aa3N033cd955.jpg"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"39.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"电池保2年","tip":"容量续航问题免费换原厂电池","platformPid":55031321777},{"price":"339.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"京享无忧2年","tip":"原厂物料2年全保修+回收换新补贴","platformPid":59700151209,"discount":"赠服务等价补贴"},{"price":"229.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"免费换1年","tip":"三包故障，享JD免费换机一次","platformPid":55039501435}],"sortName":"官修保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t1/79067/18/9323/1913/5d6e299aE5dae5e92/ea7516d00ede9296.png"}]
//    * yanBaoTitle : 保障服务
//    * yanBaoUrl : https://baozhang.jd.com/static/serviceDesc
//    */
//
//   String yanBaoDetailUrl;
//   String yanBaoTitle;
//   String yanBaoUrl;
//   List<YanBaoListBean> yanBaoList;
//
//   YanBaoInfoBean(this.yanBaoDetailUrl, this.yanBaoTitle, this.yanBaoUrl, this.yanBaoList);
// }
//  // 
// class YanBaoListBean {
//   /**
//    * class : com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem
//    * products : [{"price":"299.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修3年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224921668},{"price":"189.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修2年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224073273,"discount":"品质购 直降"},{"price":"216.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"首年全保换新","tip":"性能/意外故障一折换JD新机","platformPid":64019721974,"discount":"换新运费全免"}]
//    * sortName : 全面保障
//    * productId : 59788201255
//    * imgurl : https://img30.360buyimg.com/fuwu/jfs/t4543/105/4229305177/1459/b754e0ca/590c0c7dNfb7ce9fe.png
//    */
//
//   String sortName;
//   String productId;
//   String imgurl;
//   List<ProductsBean> products;
// }
//  // 
// class ProductsBean {
//   /**
//    * price : 299.0
//    * class : com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct
//    * sortName : 全保修3年
//    * tip : 三包硬件+碎屏溅液等故障全保修
//    * platformPid : 42224921668
//    * discount : 品质购 直降
//    */
//
//   String price;
//   String sortName;
//   String tip;
//   String platformPid;
//   String discount;
// }
//  // 
// class WareImageBean {
//   /**
//    * share : https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.jpg
//    * big : https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp
//    * small : https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp
//    */
//
//   String big;
//   String small;
// }
//  // 
// class DefineSkinChangeBean {
//   /**
//    * imageUrl : https://m.360buyimg.com/cc/jfs/t1/89891/17/179/48419/5da87c96E86f1aad7/8404be9847e92c46.png
//    * infoBoxTextColor : #FFFFFF
//    * cdTextColor : #FE1743
//    * infoBoxColor : #DA0029
//    * cdBackColor : #FFF5EA
//    * infoBoxPell : 0.9
//    * cdNumColor : #FFFFFF
//    * cdNumBoxColor : #FE1743
//    */
//
//   String imageUrl;
// }
//  // 
// class ShareImgInfoBean {
//   /**
//    * shareLanguage : 推荐一个好物给你，请查收
//    * promotionStr : 【满减】满4509元减10元
//    * priceDes : 价格具有时效性
//    * markingOff : true
//    * priceUrl : https://m.360buyimg.com/cc/jfs/t1/16989/25/11991/6282/5c933b48Eb4fd488e/03e6606b4decb734.png
//    * jprice : 4469.00
//    * secondPrice : 4799.00
//    */
//
//   String shareLanguage;
//   String promotionStr;
//   String priceDes;
//   bool markingOff;
//   String priceUrl;
//   String jprice;
//   String secondPrice;
// }
//  // 
// class WareInfoBean {
//   /**
//    * skuId : 59788201255
//    * venderId : 653506
//    * name : 华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)
//    */
//
//   String skuId;
//   String venderId;
//   String name;
// }
//  // 
// class ColorSizeInfoBean {
//   /**
//    * colorSize : [{"title":"颜色","buttons":[{"text":"亮黑","no":"1","skuList":["59724611000","59788201252","62197897734","62197897735"]},{"text":"罗兰紫","no":"3","skuList":["59788201253","59788201254","62197897736","62197897737"]},{"text":"翡冷翠","no":"5","skuList":["59788201255","59788201256","62197897738","62197897739"]},{"text":"星河银","no":"7","skuList":["59788201257","59788201258","62197897740","62197897741"]},{"text":"丹霞橙","no":"9","skuList":["59788201259","59788201260","62197897742","62197897743"]},{"text":"青山黛","no":"11","skuList":["59788201261","59788201262","62197897744","62197897745"]}]},{"title":"版本","buttons":[{"text":"全网通(8G+128G)(5G版)","no":"1","skuList":["59724611000","59788201253","59788201255","59788201257","59788201259","59788201261"]},{"text":"全网通(8G+256G)(5G版)","no":"3","skuList":["59788201252","59788201254","59788201256","59788201258","59788201260","59788201262"]},{"text":"全网通(6G+128G)(4G版)","no":"6","skuList":["62197897734","62197897736","62197897738","62197897740","62197897742","62197897744"]},{"text":"全网通(8G+128G)(4G版)","no":"7","skuList":["62197897735","62197897737","62197897739","62197897741","62197897743","62197897745"]}]}]
//    * colorSizeTips : #与其他已选项无法组成可售商品，请重选
//    */
//
//   String colorSizeTips;
//   List<ColorSizeBean> colorSize;
// }
//  // 
// class ColorSizeBean {
//   /**
//    * title : 颜色
//    * buttons : [{"text":"亮黑","no":"1","skuList":["59724611000","59788201252","62197897734","62197897735"]},{"text":"罗兰紫","no":"3","skuList":["59788201253","59788201254","62197897736","62197897737"]},{"text":"翡冷翠","no":"5","skuList":["59788201255","59788201256","62197897738","62197897739"]},{"text":"星河银","no":"7","skuList":["59788201257","59788201258","62197897740","62197897741"]},{"text":"丹霞橙","no":"9","skuList":["59788201259","59788201260","62197897742","62197897743"]},{"text":"青山黛","no":"11","skuList":["59788201261","59788201262","62197897744","62197897745"]}]
//    */
//
//   String title;
//   List<ButtonsBean> buttons;
// }
//  // 
// class ButtonsBean {
//   /**
//    * text : 亮黑
//    * no : 1
//    * skuList : ["59724611000","59788201252","62197897734","62197897735"]
//    */
//
//   String text;
//   String no;
// }
//  // 
// class ShopInfoBean {
//   /**
//    * customerService : {"hotLineInfo":{"hotLinePhoneExtend":"400-610-1360转342876","hotLineContent":"请选择客服联系方式","hotLineService":"在线客服","class":"com.jd.app.server.warecoresoa.domain.shop.HotlineInfo","hotLinePhone":"400-610-1360"},"hasChat":true,"hasJimi":false,"allGoodJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"allProduct\"}","chatInfo":{"shopText":"联系客服","allGoodText":"精选商品","class":"com.jd.app.server.warecoresoa.domain.chat.ChatInfo","bottomText":"联系客服","allGoodIcon":"detail_030","bottomIcon":"detail_044","shopIcon":"detail_044","isBubble":false},"mLink":"https://m.jd.com/product/59788201255.html","inShopLookJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"home\"}","online":true}
//    * shop : {"shopActivityTotalNum":35,"skuText":"商品","promotions":[{"name":"限时秒杀","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"secKillPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"限时闪购","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"gwredPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满159减10元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890789178\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满249减20元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890814117\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"}],"score":0,"efficiencyScore":0,"followCount":330051,"afterSaleGrade":"低","afterSaleTxt":"售后","avgEfficiencyScore":0,"shopId":649114,"promotionNum":0,"shopStarTxt":"店铺星级","squareLogo":"https://img10.360buyimg.com/cms/jfs/t1/98747/10/3459/75757/5de0c3d4Ec2948722/9a79ef65b4b72197.jpg","shopStateText":"店铺动态","cateGoodShop":0,"followText":"关注人数","class":"com.jd.app.server.warecoresoa.domain.shop.SkuShopInfo","serverText":"服务","cardType":3,"afterSaleScore":"8.87","scoreRankRateGrade":"4.0","hasCoupon":false,"avgServiceScore":0,"giftIcon":"","globalGoodShop":0,"goodShop":0,"hotcatestr":"主营各大品牌智能手机！","signboardUrl":"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg","logisticsScore":"8.57","hotcates":[{"commendSkuId":59724611000,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":10593729,"cname":"爆款专区"},{"commendSkuId":47784189130,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/57880/24/3495/100223/5d135516Ed1016603/4ae6c05d45b38bcb.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116548,"cname":"华为手机"},{"commendSkuId":56177164557,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/67458/29/9214/89945/5d70639cE57eba3f3/0cd0ef95b6e5eb0b.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116549,"cname":"荣耀手机"},{"commendSkuId":60778985698,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/81941/29/14709/978996/5dc29505E2d10d773/547e9a8bf49f1f63.png","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":13316550,"cname":"mate30系列"}],"logisticsTxt":"物流","evaluateTxt":"评价","isSquareLogo":true,"diamond":false,"name":"掌视界数码旗舰店","evaluateScore":"8.69","serviceScore":0,"logo":"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg","logisticsText":"物流","avgWareScore":0,"evaluateGrade":"低","nameB":"掌视界数码旗舰店","totalNum":147,"newNum":0,"logisticsGrade":"低","venderType":"0","shopImage":"https://img12.360buyimg.com/cms/jfs/t1/63385/39/13393/195054/5da80b54E8829a64c/b9ac4f77993f1bd6.jpg","skuCntText":"全部商品","scoreText":"综合评分","telephone":"400-610-1360转342876","wareScore":0,"brief":"主营各大品牌智能手机！"}
//    */
//
//   CustomerServiceBean customerService;
//   ShopBean shop;
// }
//  // 
// class CustomerServiceBean {
//   /**
//    * hotLineInfo : {"hotLinePhoneExtend":"400-610-1360转342876","hotLineContent":"请选择客服联系方式","hotLineService":"在线客服","class":"com.jd.app.server.warecoresoa.domain.shop.HotlineInfo","hotLinePhone":"400-610-1360"}
//    * hasChat : true
//    * hasJimi : false
//    * allGoodJumpUrl : openApp.jdMobile://virtual?params={"category":"jump","des":"jshopMain","shopId":"649114","venderId":"653506","jumpTab":"allProduct"}
//    * chatInfo : {"shopText":"联系客服","allGoodText":"精选商品","class":"com.jd.app.server.warecoresoa.domain.chat.ChatInfo","bottomText":"联系客服","allGoodIcon":"detail_030","bottomIcon":"detail_044","shopIcon":"detail_044","isBubble":false}
//    * mLink : https://m.jd.com/product/59788201255.html
//    * inShopLookJumpUrl : openApp.jdMobile://virtual?params={"category":"jump","des":"jshopMain","shopId":"649114","venderId":"653506","jumpTab":"home"}
//    * online : true
//    */
//
//   HotLineInfoBean hotLineInfo;
//   bool hasChat;
//   bool hasJimi;
//   String allGoodJumpUrl;
//   String mLink;
//   String inShopLookJumpUrl;
//   bool online;
// }
//  // 
// class HotLineInfoBean {
//   /**
//    * hotLinePhoneExtend : 400-610-1360转342876
//    * hotLineContent : 请选择客服联系方式
//    * hotLineService : 在线客服
//    * class : com.jd.app.server.warecoresoa.domain.shop.HotlineInfo
//    * hotLinePhone : 400-610-1360
//    */
//
//   String hotLinePhoneExtend;
//   String hotLineContent;
//   String hotLineService;
//   String hotLinePhone;
// }
//  // 
// class ShopBean {
//   /**
//    * shopActivityTotalNum : 35
//    * skuText : 商品
//    * promotions : [{"name":"限时秒杀","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"secKillPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"限时闪购","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"gwredPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满159减10元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890789178\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满249减20元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890814117\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"}]
//    * score : 0
//    * efficiencyScore : 0
//    * followCount : 330051
//    * afterSaleGrade : 低
//    * afterSaleTxt : 售后
//    * avgEfficiencyScore : 0
//    * shopId : 649114
//    * promotionNum : 0
//    * shopStarTxt : 店铺星级
//    * squareLogo : https://img10.360buyimg.com/cms/jfs/t1/98747/10/3459/75757/5de0c3d4Ec2948722/9a79ef65b4b72197.jpg
//    * shopStateText : 店铺动态
//    * cateGoodShop : 0
//    * followText : 关注人数
//    * class : com.jd.app.server.warecoresoa.domain.shop.SkuShopInfo
//    * serverText : 服务
//    * cardType : 3
//    * afterSaleScore : 8.87
//    * scoreRankRateGrade : 4.0
//    * hasCoupon : false
//    * avgServiceScore : 0
//    * giftIcon :
//    * globalGoodShop : 0
//    * goodShop : 0
//    * hotcatestr : 主营各大品牌智能手机！
//    * signboardUrl : https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg
//    * logisticsScore : 8.57
//    * hotcates : [{"commendSkuId":59724611000,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":10593729,"cname":"爆款专区"},{"commendSkuId":47784189130,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/57880/24/3495/100223/5d135516Ed1016603/4ae6c05d45b38bcb.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116548,"cname":"华为手机"},{"commendSkuId":56177164557,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/67458/29/9214/89945/5d70639cE57eba3f3/0cd0ef95b6e5eb0b.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116549,"cname":"荣耀手机"},{"commendSkuId":60778985698,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/81941/29/14709/978996/5dc29505E2d10d773/547e9a8bf49f1f63.png","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":13316550,"cname":"mate30系列"}]
//    * logisticsTxt : 物流
//    * evaluateTxt : 评价
//    * isSquareLogo : true
//    * diamond : false
//    * name : 掌视界数码旗舰店
//    * evaluateScore : 8.69
//    * serviceScore : 0
//    * logo : https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg
//    * logisticsText : 物流
//    * avgWareScore : 0
//    * evaluateGrade : 低
//    * nameB : 掌视界数码旗舰店
//    * totalNum : 147
//    * newNum : 0
//    * logisticsGrade : 低
//    * venderType : 0
//    * shopImage : https://img12.360buyimg.com/cms/jfs/t1/63385/39/13393/195054/5da80b54E8829a64c/b9ac4f77993f1bd6.jpg
//    * skuCntText : 全部商品
//    * scoreText : 综合评分
//    * telephone : 400-610-1360转342876
//    * wareScore : 0
//    * brief : 主营各大品牌智能手机！
//    */
//
//   int shopActivityTotalNum;
//   String skuText;
//   int score;
//   int efficiencyScore;
//   int followCount;
//   String afterSaleGrade;
//   String afterSaleTxt;
//   int avgEfficiencyScore;
//   int shopId;
//   int promotionNum;
//   String shopStarTxt;
//   String squareLogo;
//   String shopStateText;
//   int cateGoodShop;
//   String followText;
//   String serverText;
//   int cardType;
//   String afterSaleScore;
//   String scoreRankRateGrade;
//   bool hasCoupon;
//   int avgServiceScore;
//   String giftIcon;
//   int globalGoodShop;
//   int goodShop;
//   String hotcatestr;
//   String signboardUrl;
//   String logisticsScore;
//   String logisticsTxt;
//   String evaluateTxt;
//   bool isSquareLogo;
//   bool diamond;
//   String name;
//   String evaluateScore;
//   int serviceScore;
//   String logo;
//   String logisticsText;
//   int avgWareScore;
//   String evaluateGrade;
//   String nameB;
//   int totalNum;
//   int newNum;
//   String logisticsGrade;
//   String venderType;
//   String shopImage;
//   String skuCntText;
//   String scoreText;
//   String telephone;
//   int wareScore;
//   String brief;
//   List<HotcatesBean> hotcates;
// }
//  // 
// class HotcatesBean {
//   /**
//    * commendSkuId : 59724611000
//    * imgPath : https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg
//    * class : com.jd.app.server.warecoresoa.domain.shop.ShopHotCate
//    * cid : 10593729
//    * cname : 爆款专区
//    */
//
//   String commendSkuId;
//   String imgPath;
//   int cid;
//   String cname;
// }
