class PersonInfoEntity {
  int code;
  List<Floors> floors;

  PersonInfoEntity({this.code, this.floors });

  PersonInfoEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['floors'] != null) {
      floors = new List<Floors>();
      json['floors'].forEach((v) { floors.add(new Floors.fromJson(v)); });
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

class Data {
  Title title;
  List<CardsResetOrderInfo> cardsResetOrderInfo;
  CloseReminder closeReminder;
  TopNavigationBar topNavigationBar;
  List<JingxiangCredit> jingxiangCredit;
  int style;
  BgImgInfo bgImgInfo;
  BlackCardInfo blackCardInfo;
  UserLevelInfo userLevelInfo;
  int labelColorStyle;
  TextColorNode textColorNode;
  UserInfoSns userInfoSns;
  int userType;
  List<OrderList> orderList;
  ExpoMta expoMta;
  List<WalletList> walletList;
  ExtendInfo extendInfo;
  List<Nodes> nodes;
  MaiDian maiDian;
  int enc;
  String attentionList;
  CommonInfo commonInfo;
  List<Banners> banners;
  String text;
  String iconUrl;
  String tips;
  ExtraInfo extraInfo;
  BizData bizData;
  String questionImgUrl;
  List<MyList> myList;
  String testId;
  String answerImgUrl;
  String questionText;
  String strategyId;
  String testParam;
  List<InfoList> infoList;

  Data({this.title, this.cardsResetOrderInfo, this.closeReminder, this.topNavigationBar,  this.jingxiangCredit, this.style, this.bgImgInfo, this.blackCardInfo, this.userLevelInfo, this.labelColorStyle, this.textColorNode, this.userInfoSns, this.userType, this.orderList, this.expoMta, this.walletList, this.extendInfo, this.nodes, this.maiDian, this.enc, this.attentionList, this.commonInfo, this.banners, this.text, this.iconUrl, this.tips, this.extraInfo, this.bizData, this.questionImgUrl, this.myList, this.testId, this.answerImgUrl, this.questionText, this.strategyId, this.testParam, this.infoList});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    if (json['cardsResetOrderInfo'] != null) {
      cardsResetOrderInfo = new List<CardsResetOrderInfo>();
      json['cardsResetOrderInfo'].forEach((v) { cardsResetOrderInfo.add(new CardsResetOrderInfo.fromJson(v)); });
    }
    closeReminder = json['closeReminder'] != null ? new CloseReminder.fromJson(json['closeReminder']) : null;
    topNavigationBar = json['topNavigationBar'] != null ? new TopNavigationBar.fromJson(json['topNavigationBar']) : null;

    if (json['jingxiangCredit'] != null) {
      jingxiangCredit = new List<JingxiangCredit>();
      json['jingxiangCredit'].forEach((v) { jingxiangCredit.add(new JingxiangCredit.fromJson(v)); });
    }
    style = json['style'];
    bgImgInfo = json['bgImgInfo'] != null ? new BgImgInfo.fromJson(json['bgImgInfo']) : null;
    blackCardInfo = json['blackCardInfo'] != null ? new BlackCardInfo.fromJson(json['blackCardInfo']) : null;
    userLevelInfo = json['userLevelInfo'] != null ? new UserLevelInfo.fromJson(json['userLevelInfo']) : null;
    labelColorStyle = json['labelColorStyle'];
    textColorNode = json['textColorNode'] != null ? new TextColorNode.fromJson(json['textColorNode']) : null;
    userInfoSns = json['userInfoSns'] != null ? new UserInfoSns.fromJson(json['userInfoSns']) : null;
    userType = json['userType'];
    if (json['orderList'] != null) {
      orderList = new List<OrderList>();
      json['orderList'].forEach((v) { orderList.add(new OrderList.fromJson(v)); });
    }
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    if (json['walletList'] != null) {
      walletList = new List<WalletList>();
      json['walletList'].forEach((v) { walletList.add(new WalletList.fromJson(v)); });
    }
    extendInfo = json['extendInfo'] != null ? new ExtendInfo.fromJson(json['extendInfo']) : null;
    if (json['nodes'] != null) {
      nodes = new List<Nodes>();
      json['nodes'].forEach((v) { nodes.add(new Nodes.fromJson(v)); });
    }
    maiDian = json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    enc = json['enc'];
    attentionList = json['attentionList'];
    commonInfo = json['commonInfo'] != null ? new CommonInfo.fromJson(json['commonInfo']) : null;
    if (json['banners'] != null) {
      banners = new List<Banners>();
      json['banners'].forEach((v) { banners.add(new Banners.fromJson(v)); });
    }
    text = json['text'];
    iconUrl = json['iconUrl'];
    tips = json['tips'];
    extraInfo = json['extraInfo'] != null ? new ExtraInfo.fromJson(json['extraInfo']) : null;
    bizData = json['bizData'] != null ? new BizData.fromJson(json['bizData']) : null;
    questionImgUrl = json['questionImgUrl'];
    if (json['myList'] != null) {
      myList = new List<MyList>();
      json['myList'].forEach((v) { myList.add(new MyList.fromJson(v)); });
    }
    testId = json['testId'];
    answerImgUrl = json['answerImgUrl'];
    questionText = json['questionText'];
    strategyId = json['strategyId'];
    testParam = json['testParam'];
    if (json['infoList'] != null) {
      infoList = new List<InfoList>();
      json['infoList'].forEach((v) { infoList.add(new InfoList.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.cardsResetOrderInfo != null) {
      data['cardsResetOrderInfo'] = this.cardsResetOrderInfo.map((v) => v.toJson()).toList();
    }
    if (this.closeReminder != null) {
      data['closeReminder'] = this.closeReminder.toJson();
    }
    if (this.topNavigationBar != null) {
      data['topNavigationBar'] = this.topNavigationBar.toJson();
    }

    if (this.jingxiangCredit != null) {
      data['jingxiangCredit'] = this.jingxiangCredit.map((v) => v.toJson()).toList();
    }
    data['style'] = this.style;
    if (this.bgImgInfo != null) {
      data['bgImgInfo'] = this.bgImgInfo.toJson();
    }
    if (this.blackCardInfo != null) {
      data['blackCardInfo'] = this.blackCardInfo.toJson();
    }
    if (this.userLevelInfo != null) {
      data['userLevelInfo'] = this.userLevelInfo.toJson();
    }
    data['labelColorStyle'] = this.labelColorStyle;
    if (this.textColorNode != null) {
      data['textColorNode'] = this.textColorNode.toJson();
    }
    if (this.userInfoSns != null) {
      data['userInfoSns'] = this.userInfoSns.toJson();
    }
    data['userType'] = this.userType;
    if (this.orderList != null) {
      data['orderList'] = this.orderList.map((v) => v.toJson()).toList();
    }
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    if (this.walletList != null) {
      data['walletList'] = this.walletList.map((v) => v.toJson()).toList();
    }
    if (this.extendInfo != null) {
      data['extendInfo'] = this.extendInfo.toJson();
    }
    if (this.nodes != null) {
      data['nodes'] = this.nodes.map((v) => v.toJson()).toList();
    }
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['enc'] = this.enc;
    data['attentionList'] = this.attentionList;
    if (this.commonInfo != null) {
      data['commonInfo'] = this.commonInfo.toJson();
    }
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    data['text'] = this.text;
    data['iconUrl'] = this.iconUrl;
    data['tips'] = this.tips;
    if (this.extraInfo != null) {
      data['extraInfo'] = this.extraInfo.toJson();
    }
    if (this.bizData != null) {
      data['bizData'] = this.bizData.toJson();
    }
    data['questionImgUrl'] = this.questionImgUrl;
    if (this.myList != null) {
      data['myList'] = this.myList.map((v) => v.toJson()).toList();
    }
    data['testId'] = this.testId;
    data['answerImgUrl'] = this.answerImgUrl;
    data['questionText'] = this.questionText;
    data['strategyId'] = this.strategyId;
    data['testParam'] = this.testParam;
    if (this.infoList != null) {
      data['infoList'] = this.infoList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Title {
  String color;
  String value;

  Title({this.color, this.value});

  Title.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['value'] = this.value;
    return data;
  }
}

class CardsResetOrderInfo {
  int sort;
  String functionId;
  String maidianId;

  CardsResetOrderInfo({this.sort, this.functionId, this.maidianId});

  CardsResetOrderInfo.fromJson(Map<String, dynamic> json) {
    sort = json['sort'];
    functionId = json['functionId'];
    maidianId = json['maidianId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sort'] = this.sort;
    data['functionId'] = this.functionId;
    data['maidianId'] = this.maidianId;
    return data;
  }
}

class CloseReminder {
  String cardSubTitle;
  String tempCardTitle;
  String cardTitle;

  CloseReminder({this.cardSubTitle, this.tempCardTitle, this.cardTitle});

  CloseReminder.fromJson(Map<String, dynamic> json) {
    cardSubTitle = json['cardSubTitle'];
    tempCardTitle = json['tempCardTitle'];
    cardTitle = json['cardTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardSubTitle'] = this.cardSubTitle;
    data['tempCardTitle'] = this.tempCardTitle;
    data['cardTitle'] = this.cardTitle;
    return data;
  }
}

class TopNavigationBar {
  JumpInfo jumpInfo;
  ClickMta clickMta;
  String headImg;
  SettingInfo settingInfo;
  String functionId;
  String contentColor;

  TopNavigationBar({this.jumpInfo, this.clickMta, this.headImg, this.settingInfo, this.functionId, this.contentColor});

  TopNavigationBar.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
    headImg = json['headImg'];
    settingInfo = json['settingInfo'] != null ? new SettingInfo.fromJson(json['settingInfo']) : null;
    functionId = json['functionId'];
    contentColor = json['contentColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['headImg'] = this.headImg;
    if (this.settingInfo != null) {
      data['settingInfo'] = this.settingInfo.toJson();
    }
    data['functionId'] = this.functionId;
    data['contentColor'] = this.contentColor;
    return data;
  }
}

class JumpInfo {
  int jumpType;
  String jumpUrl;
  int needLogin;

  JumpInfo({this.jumpType, this.jumpUrl, this.needLogin});

  JumpInfo.fromJson(Map<String, dynamic> json) {
    jumpType = json['jumpType'];
    jumpUrl = json['jumpUrl'];
    needLogin = json['needLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumpType'] = this.jumpType;
    data['jumpUrl'] = this.jumpUrl;
    data['needLogin'] = this.needLogin;
    return data;
  }
}

class ClickMta {
  String pageParam;
  String eventId;
  String pageId;
  String pageLevel;
  String pagerParam;

  ClickMta({this.pageParam, this.eventId, this.pageId, this.pageLevel, this.pagerParam});

  ClickMta.fromJson(Map<String, dynamic> json) {
    pageParam = json['pageParam'];
    eventId = json['eventId'];
    pageId = json['pageId'];
    pageLevel = json['pageLevel'];
    pagerParam = json['pagerParam'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageParam'] = this.pageParam;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    data['pageLevel'] = this.pageLevel;
    data['pagerParam'] = this.pagerParam;
    return data;
  }
}

class SettingInfo {
  String title;
  String buttonIcon;
  String buttonType;
  int updateRedDotTime;
  String settingId;
  int showRedDot;

  SettingInfo({this.title, this.buttonIcon, this.buttonType, this.updateRedDotTime, this.settingId, this.showRedDot});

  SettingInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    buttonIcon = json['buttonIcon'];
    buttonType = json['buttonType'];
    updateRedDotTime = json['updateRedDotTime'];
    settingId = json['settingId'];
    showRedDot = json['showRedDot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['buttonIcon'] = this.buttonIcon;
    data['buttonType'] = this.buttonType;
    data['updateRedDotTime'] = this.updateRedDotTime;
    data['settingId'] = this.settingId;
    data['showRedDot'] = this.showRedDot;
    return data;
  }
}

class JingxiangCredit {
  JumpInfo jumpInfo;
  String text;
  String encStr;
  int type;
  String functionId;
  ExpoMta expoMta;
  int enc;
  int timestamp;
  int showFlash;
  String bubbleImg;

  JingxiangCredit({this.jumpInfo, this.text,  this.encStr, this.type, this.functionId, this.expoMta, this.enc, this.timestamp, this.showFlash, this.bubbleImg});

  JingxiangCredit.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    text = json['text'];
    encStr = json['encStr'];
    type = json['type'];
    functionId = json['functionId'];
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    enc = json['enc'];
    timestamp = json['timestamp'];
    showFlash = json['showFlash'];
    bubbleImg = json['bubbleImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['text'] = this.text;

    data['encStr'] = this.encStr;
    data['type'] = this.type;
    data['functionId'] = this.functionId;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    data['enc'] = this.enc;
    data['timestamp'] = this.timestamp;
    data['showFlash'] = this.showFlash;
    data['bubbleImg'] = this.bubbleImg;
    return data;
  }
}

class ExpoMta {
  String eventParam;
  String eventId;
  String pageId;

  ExpoMta({this.eventParam, this.eventId, this.pageId});

  ExpoMta.fromJson(Map<String, dynamic> json) {
    eventParam = json['eventParam'];
    eventId = json['eventId'];
    pageId = json['pageId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventParam'] = this.eventParam;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    return data;
  }
}

class BgImgInfo {
  String radianImgDark;
  String radianImg;
  String bgImg;

  BgImgInfo({this.radianImgDark, this.radianImg, this.bgImg});

  BgImgInfo.fromJson(Map<String, dynamic> json) {
    radianImgDark = json['radianImgDark'];
    radianImg = json['radianImg'];
    bgImg = json['bgImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['radianImgDark'] = this.radianImgDark;
    data['radianImg'] = this.radianImg;
    data['bgImg'] = this.bgImg;
    return data;
  }
}

class BlackCardInfo {
  String imgUrl;
  JumpInfo jumpInfo;
  String textColor;
  int redDotUnixTime;
  String rightText;
  String midText;
  String leftImg;
  int flashUnixTime;
  String lottieUrl;
  int type;
  ExpoMta expoMta;

  BlackCardInfo({this.imgUrl, this.jumpInfo, this.textColor, this.redDotUnixTime, this.rightText, this.midText, this.leftImg, this.flashUnixTime, this.lottieUrl, this.type, this.expoMta});

  BlackCardInfo.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    textColor = json['textColor'];
    redDotUnixTime = json['redDotUnixTime'];
    rightText = json['rightText'];
    midText = json['midText'];
    leftImg = json['leftImg'];
    flashUnixTime = json['flashUnixTime'];
    lottieUrl = json['lottieUrl'];
    type = json['type'];
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['textColor'] = this.textColor;
    data['redDotUnixTime'] = this.redDotUnixTime;

    data['rightText'] = this.rightText;
    data['midText'] = this.midText;
    data['leftImg'] = this.leftImg;
    data['flashUnixTime'] = this.flashUnixTime;
    data['lottieUrl'] = this.lottieUrl;
    data['type'] = this.type;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    return data;
  }
}

class UserLevelInfo {
  String userLevelClass;
  int type;

  UserLevelInfo({this.userLevelClass, this.type});

  UserLevelInfo.fromJson(Map<String, dynamic> json) {
    userLevelClass = json['userLevelClass'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userLevelClass'] = this.userLevelClass;
    data['type'] = this.type;
    return data;
  }
}

class TextColorNode {
  String normal;
  String dark;
  String light;

  TextColorNode({this.normal, this.dark, this.light});

  TextColorNode.fromJson(Map<String, dynamic> json) {
    normal = json['normal'];
    dark = json['dark'];
    light = json['light'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['normal'] = this.normal;
    data['dark'] = this.dark;
    data['light'] = this.light;
    return data;
  }
}

class UserInfoSns {
  String imgUrl;
  JumpInfo jumpInfo;
  String registerImgUrl;
  String title;
  ClickMta clickMta;
  String faceLoginImg;

  UserInfoSns({this.imgUrl, this.jumpInfo, this.registerImgUrl, this.title, this.clickMta, this.faceLoginImg});

  UserInfoSns.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    registerImgUrl = json['registerImgUrl'];
    title = json['title'];
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
    faceLoginImg = json['faceLoginImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['registerImgUrl'] = this.registerImgUrl;
    data['title'] = this.title;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['faceLoginImg'] = this.faceLoginImg;
    return data;
  }
}

class OrderList {
  String darkImage;
  int redDotType;
  JumpInfo jumpInfo;
  Title title;

  String encStr;
  String safeImage;
  int value;
  int updateRedDotTime;
  Title subtitle;
  String functionId;
  int enc;
  bool isFirstComment;

  OrderList({this.darkImage, this.redDotType, this.jumpInfo, this.title,  this.encStr, this.safeImage, this.value, this.updateRedDotTime, this.subtitle, this.functionId, this.enc, this.isFirstComment});

  OrderList.fromJson(Map<String, dynamic> json) {
    darkImage = json['darkImage'];
    redDotType = json['redDotType'];
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;

    encStr = json['encStr'];
    safeImage = json['safeImage'];
    value = json['value'];
    updateRedDotTime = json['updateRedDotTime'];
    subtitle = json['subtitle'] != null ? new Title.fromJson(json['subtitle']) : null;
    functionId = json['functionId'];
    enc = json['enc'];
    isFirstComment = json['isFirstComment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['darkImage'] = this.darkImage;
    data['redDotType'] = this.redDotType;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }

    data['encStr'] = this.encStr;
    data['safeImage'] = this.safeImage;
    data['value'] = this.value;
    data['updateRedDotTime'] = this.updateRedDotTime;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['functionId'] = this.functionId;
    data['enc'] = this.enc;
    data['isFirstComment'] = this.isFirstComment;
    return data;
  }
}

class WalletList {
  int redDotType;
  String darkImage;
  JumpInfo jumpInfo;
  ClickMta clickMta;
  Title title;
  String encStr;
  String numContent;
  String safeImage;
  Title subtitle;
  int updateRedDotTime;
  int contentType;
  String functionId;
  ExpoMta expoMta;
  int enc;
  String supportHide;

  WalletList({this.redDotType, this.darkImage, this.jumpInfo, this.clickMta, this.title, this.encStr, this.numContent, this.safeImage, this.subtitle, this.updateRedDotTime, this.contentType, this.functionId, this.expoMta, this.enc, this.supportHide});

  WalletList.fromJson(Map<String, dynamic> json) {
    redDotType = json['redDotType'];
    darkImage = json['darkImage'];
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    encStr = json['encStr'];
    numContent = json['numContent'];
    safeImage = json['safeImage'];
    subtitle = json['subtitle'] != null ? new Title.fromJson(json['subtitle']) : null;
    updateRedDotTime = json['updateRedDotTime'];
    contentType = json['contentType'];
    functionId = json['functionId'];
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    enc = json['enc'];
    supportHide = json['supportHide'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['redDotType'] = this.redDotType;
    data['darkImage'] = this.darkImage;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    data['encStr'] = this.encStr;
    data['numContent'] = this.numContent;
    data['safeImage'] = this.safeImage;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['updateRedDotTime'] = this.updateRedDotTime;
    data['contentType'] = this.contentType;
    data['functionId'] = this.functionId;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    data['enc'] = this.enc;
    data['supportHide'] = this.supportHide;
    return data;
  }
}

class ExtendInfo {
  Footer footer;
  Header header;

  ExtendInfo({this.footer, this.header});

  ExtendInfo.fromJson(Map<String, dynamic> json) {
    footer = json['footer'] != null ? new Footer.fromJson(json['footer']) : null;
    header = json['header'] != null ? new Header.fromJson(json['header']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.footer != null) {
      data['footer'] = this.footer.toJson();
    }
    if (this.header != null) {
      data['header'] = this.header.toJson();
    }
    return data;
  }
}

class Footer {
  String jumpUrl;
  String text;

  Footer({this.jumpUrl, this.text});

  Footer.fromJson(Map<String, dynamic> json) {
    jumpUrl = json['jumpUrl'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumpUrl'] = this.jumpUrl;
    data['text'] = this.text;
    return data;
  }
}

class Header {
  String labelColor;
  RightIconText3 rightIconText3;
  String labelName;
  RightIconText4 rightIconText4;

  Header({this.labelColor, this.rightIconText3, this.labelName, this.rightIconText4});

  Header.fromJson(Map<String, dynamic> json) {
    labelColor = json['labelColor'];
    rightIconText3 = json['rightIconText3'] != null ? new RightIconText3.fromJson(json['rightIconText3']) : null;
    labelName = json['labelName'];
    rightIconText4 = json['rightIconText4'] != null ? new RightIconText4.fromJson(json['rightIconText4']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labelColor'] = this.labelColor;
    if (this.rightIconText3 != null) {
      data['rightIconText3'] = this.rightIconText3.toJson();
    }
    data['labelName'] = this.labelName;
    if (this.rightIconText4 != null) {
      data['rightIconText4'] = this.rightIconText4.toJson();
    }
    return data;
  }
}

class RightIconText3 {
  String text;
  ClickMta clickMta;
  Param param;
  bool hasNext;
  String iconUrl;
  ExpoMta tipMta;
  String functionId;
  String tip;
  ExpoMta expoMta;

  RightIconText3({this.text, this.clickMta, this.param, this.hasNext, this.iconUrl, this.tipMta, this.functionId, this.tip, this.expoMta});

  RightIconText3.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
    param = json['param'] != null ? new Param.fromJson(json['param']) : null;
    hasNext = json['hasNext'];
    iconUrl = json['iconUrl'];
    tipMta = json['tipMta'] != null ? new ExpoMta.fromJson(json['tipMta']) : null;
    functionId = json['functionId'];
    tip = json['tip'];
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    if (this.param != null) {
      data['param'] = this.param.toJson();
    }
    data['hasNext'] = this.hasNext;
    data['iconUrl'] = this.iconUrl;
    if (this.tipMta != null) {
      data['tipMta'] = this.tipMta.toJson();
    }
    data['functionId'] = this.functionId;
    data['tip'] = this.tip;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    return data;
  }
}

class Param {
  String exchangeId;

  Param({this.exchangeId});

  Param.fromJson(Map<String, dynamic> json) {
    exchangeId = json['exchangeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exchangeId'] = this.exchangeId;
    return data;
  }
}

class RightIconText4 {
  JumpInfo jumpInfo;
  String text;
  ClickMta clickMta;

  RightIconText4({this.jumpInfo, this.text, this.clickMta});

  RightIconText4.fromJson(Map<String, dynamic> json) {
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    text = json['text'];
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    data['text'] = this.text;
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    return data;
  }
}

class Nodes {
  String content;
  JumpInfo jumpInfo;
  ClickMta clickMta;
  Title title;
  String safeImage;
  String bubbleImg;
  Title subtitle;
  int updateRedDotTime;
  int contentType;
  int playTimes;
  String functionId;
  ExpoMta expoMta;
  int redDotType;
  String subTitle;
  String bubbleImage;
  int imageType;
  int redDotTimeStamp;

  Nodes({this.content, this.jumpInfo, this.clickMta, this.title, this.safeImage, this.bubbleImg, this.subtitle, this.updateRedDotTime, this.contentType, this.playTimes, this.functionId,   this.expoMta, this.redDotType, this.subTitle, this.bubbleImage, this.imageType, this.redDotTimeStamp});

  Nodes.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    safeImage = json['safeImage'];
    bubbleImg = json['bubbleImg'];
    subtitle = json['subtitle'] != null ? new Title.fromJson(json['subtitle']) : null;
    updateRedDotTime = json['updateRedDotTime'];
    contentType = json['contentType'];
    playTimes = json['playTimes'];
    functionId = json['functionId'];
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    redDotType = json['redDotType'];
    subTitle = json['subTitle'];
    bubbleImage = json['bubbleImage'];
    imageType = json['imageType'];
    redDotTimeStamp = json['redDotTimeStamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    data['safeImage'] = this.safeImage;
    data['bubbleImg'] = this.bubbleImg;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['updateRedDotTime'] = this.updateRedDotTime;
    data['contentType'] = this.contentType;
    data['playTimes'] = this.playTimes;
    data['functionId'] = this.functionId;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    data['redDotType'] = this.redDotType;
    data['subTitle'] = this.subTitle;
    data['bubbleImage'] = this.bubbleImage;
    data['imageType'] = this.imageType;
    data['redDotTimeStamp'] = this.redDotTimeStamp;
    return data;
  }
}

class MaiDian {
  String noMoreSure;
  String more;
  String notNow;
  String noMoreThink;
  String noMore;
  String set;

  MaiDian({this.noMoreSure, this.more, this.notNow, this.noMoreThink, this.noMore, this.set});

  MaiDian.fromJson(Map<String, dynamic> json) {
    noMoreSure = json['noMoreSure'];
    more = json['more'];
    notNow = json['notNow'];
    noMoreThink = json['noMoreThink'];
    noMore = json['noMore'];
    set = json['set'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noMoreSure'] = this.noMoreSure;
    data['more'] = this.more;
    data['notNow'] = this.notNow;
    data['noMoreThink'] = this.noMoreThink;
    data['noMore'] = this.noMore;
    data['set'] = this.set;
    return data;
  }
}

class CommonInfo {
  String margin;
  String angle;
  String lableName;

  CommonInfo({this.margin, this.angle, this.lableName});

  CommonInfo.fromJson(Map<String, dynamic> json) {
    margin = json['margin'];
    angle = json['angle'];
    lableName = json['lableName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['margin'] = this.margin;
    data['angle'] = this.angle;
    data['lableName'] = this.lableName;
    return data;
  }
}

class Banners {
  String jumpType;
  String pageParam;
  String eventParam;
  String jumpUrl;
  String eventId;
  String pageId;
  String lableImage;
  String lableName;
  String eventLevel;
  String orderGrade;

  Banners({this.jumpType, this.pageParam, this.eventParam, this.jumpUrl, this.eventId, this.pageId, this.lableImage, this.lableName, this.eventLevel, this.orderGrade});

  Banners.fromJson(Map<String, dynamic> json) {
    jumpType = json['jumpType'];
    pageParam = json['pageParam'];
    eventParam = json['eventParam'];
    jumpUrl = json['jumpUrl'];
    eventId = json['eventId'];
    pageId = json['pageId'];
    lableImage = json['lableImage'];
    lableName = json['lableName'];
    eventLevel = json['eventLevel'];
    orderGrade = json['orderGrade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jumpType'] = this.jumpType;
    data['pageParam'] = this.pageParam;
    data['eventParam'] = this.eventParam;
    data['jumpUrl'] = this.jumpUrl;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    data['lableImage'] = this.lableImage;
    data['lableName'] = this.lableName;
    data['eventLevel'] = this.eventLevel;
    data['orderGrade'] = this.orderGrade;
    return data;
  }
}

class ExtraInfo {
  String bid;
  String mid;

  ExtraInfo({this.bid, this.mid});

  ExtraInfo.fromJson(Map<String, dynamic> json) {
    bid = json['bid'];
    mid = json['mid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bid'] = this.bid;
    data['mid'] = this.mid;
    return data;
  }
}

class BizData {
  PlusInfo plusInfo;
  ContentInfo contentInfo;
  NoticeInfo noticeInfo;
  MaiDian maiDian;
  String style;

  BizData({this.plusInfo, this.contentInfo, this.noticeInfo, this.maiDian, this.style});

  BizData.fromJson(Map<String, dynamic> json) {
    plusInfo = json['plusInfo'] != null ? new PlusInfo.fromJson(json['plusInfo']) : null;
    contentInfo = json['contentInfo'] != null ? new ContentInfo.fromJson(json['contentInfo']) : null;
    noticeInfo = json['noticeInfo'] != null ? new NoticeInfo.fromJson(json['noticeInfo']) : null;
    maiDian = json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    style = json['style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.plusInfo != null) {
      data['plusInfo'] = this.plusInfo.toJson();
    }
    if (this.contentInfo != null) {
      data['contentInfo'] = this.contentInfo.toJson();
    }
    if (this.noticeInfo != null) {
      data['noticeInfo'] = this.noticeInfo.toJson();
    }
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['style'] = this.style;
    return data;
  }
}

class PlusInfo {
  String statusCode;
  String statusLabel;

  PlusInfo({this.statusCode, this.statusLabel});

  PlusInfo.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusLabel = json['statusLabel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['statusLabel'] = this.statusLabel;
    return data;
  }
}

class ContentInfo {
  Bottom bottom;
  Bottom right;
  Bottom left;

  ContentInfo({this.bottom, this.right, this.left});

  ContentInfo.fromJson(Map<String, dynamic> json) {
    bottom = json['bottom'] != null ? new Bottom.fromJson(json['bottom']) : null;
    right = json['right'] != null ? new Bottom.fromJson(json['right']) : null;
    left = json['left'] != null ? new Bottom.fromJson(json['left']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bottom != null) {
      data['bottom'] = this.bottom.toJson();
    }
    if (this.right != null) {
      data['right'] = this.right.toJson();
    }
    if (this.left != null) {
      data['left'] = this.left.toJson();
    }
    return data;
  }
}

class Bottom {
  String linkType;
  TextInfo text;
  String contentType;
  String style;
  String url;

  Bottom({this.linkType,   this.text, this.contentType, this.style, this.url});

  Bottom.fromJson(Map<String, dynamic> json) {
    linkType = json['linkType'];
    text = json['text'] != null ? new TextInfo.fromJson(json['text']) : null;
    contentType = json['contentType'];
    style = json['style'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['linkType'] = this.linkType;
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    data['contentType'] = this.contentType;
    data['style'] = this.style;
    data['url'] = this.url;
    return data;
  }
}



class TextInfo {
  String first;

  TextInfo({ this.first});

  TextInfo.fromJson(Map<String, dynamic> json) {
    first = json['first'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    return data;
  }
}

class NoticeInfo {
  String icon;
  List<MessageList> messageList;
  String label;

  NoticeInfo({this.icon, this.messageList, this.label});

  NoticeInfo.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    if (json['messageList'] != null) {
      messageList = new List<MessageList>();
      json['messageList'].forEach((v) { messageList.add(new MessageList.fromJson(v)); });
    }
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    if (this.messageList != null) {
      data['messageList'] = this.messageList.map((v) => v.toJson()).toList();
    }
    data['label'] = this.label;
    return data;
  }
}

class MessageList {
  String id;
  List<String> text;
  String style;
  String linkType;
  MaiDian maiDian;
  String url;

  MessageList({this.id, this.text, this.style, this.linkType, this.maiDian, this.url});

  MessageList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'].cast<String>();
    style = json['style'];
    linkType = json['linkType'];
    maiDian = json['maiDian'] != null ? new MaiDian.fromJson(json['maiDian']) : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['style'] = this.style;
    data['linkType'] = this.linkType;
    if (this.maiDian != null) {
      data['maiDian'] = this.maiDian.toJson();
    }
    data['url'] = this.url;
    return data;
  }
}

class MyList {
  String id;
  String userText;
  String nickName;
  String questionContent;
  String skuId;
  String question;
  String wareImg;
  String letMeAnswerText;
  String userImg;
  String answerCountText;

  MyList({this.id, this.userText, this.nickName, this.questionContent, this.skuId, this.question, this.wareImg, this.letMeAnswerText, this.userImg, this.answerCountText});

  MyList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userText = json['userText'];
    nickName = json['nickName'];
    questionContent = json['questionContent'];
    skuId = json['skuId'];
    question = json['question'];
    wareImg = json['wareImg'];
    letMeAnswerText = json['letMeAnswerText'];
    userImg = json['userImg'];
    answerCountText = json['answerCountText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userText'] = this.userText;
    data['nickName'] = this.nickName;
    data['questionContent'] = this.questionContent;
    data['skuId'] = this.skuId;
    data['question'] = this.question;
    data['wareImg'] = this.wareImg;
    data['letMeAnswerText'] = this.letMeAnswerText;
    data['userImg'] = this.userImg;
    data['answerCountText'] = this.answerCountText;
    return data;
  }
}

class InfoList {
  String detailUrl;
  Extra extra;
  InfoListData data;
  int modeType;
  String oneCategory;
  Biz biz;
  String info;

  InfoList({this.detailUrl, this.extra, this.data, this.modeType, this.oneCategory, this.biz, this.info});

  InfoList.fromJson(Map<String, dynamic> json) {
    detailUrl = json['detailUrl'];
    extra = json['extra'] != null ? new Extra.fromJson(json['extra']) : null;
    data = json['data'] != null ? new InfoListData.fromJson(json['data']) : null;
    modeType = json['modeType'];
    oneCategory = json['oneCategory'];
    biz = json['biz'] != null ? new Biz.fromJson(json['biz']) : null;
    info = json['info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['detailUrl'] = this.detailUrl;
    if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['modeType'] = this.modeType;
    data['oneCategory'] = this.oneCategory;
    if (this.biz != null) {
      data['biz'] = this.biz.toJson();
    }
    data['info'] = this.info;
    return data;
  }
}

class Extra {
  String content;
  int type;

  Extra({this.content, this.type});

  Extra.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['type'] = this.type;
    return data;
  }
}

class InfoListData {
  List<String> downData;
  List<String> upData;

  InfoListData({this.downData, this.upData});

  InfoListData.fromJson(Map<String, dynamic> json) {
    downData = json['downData'].cast<String>();
    upData = json['upData'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['downData'] = this.downData;
    data['upData'] = this.upData;
    return data;
  }
}

class Biz {
  String text;
  String bizImgUrl;

  Biz({this.text, this.bizImgUrl});

  Biz.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    bizImgUrl = json['bizImgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['bizImgUrl'] = this.bizImgUrl;
    return data;
  }
}
