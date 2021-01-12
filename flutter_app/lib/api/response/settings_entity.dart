class  SettingsEntity {
  int code;
  List<Floors> floors;

   SettingsEntity({this.code, this.floors });

   SettingsEntity.fromJson(Map<String, dynamic> json) {
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
  List<Nodes> nodes;
  String angleStyle;

  Data({this.nodes, this.angleStyle});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['nodes'] != null) {
      nodes = new List<Nodes>();
      json['nodes'].forEach((v) { nodes.add(new Nodes.fromJson(v)); });
    }
    angleStyle = json['angleStyle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nodes != null) {
      data['nodes'] = this.nodes.map((v) => v.toJson()).toList();
    }
    data['angleStyle'] = this.angleStyle;
    return data;
  }
}

class Nodes {
  String functionId;
  String userInfoSns;
  int enc;
  int jumpStyle;
  JumpInfo jumpInfo;
  Title title;
  ClickMta clickMta;
  int updateRedDotTime;
  Title subtitle;
  int showRedDot;
  ExpoMta expoMta;
  String introducTitle;
  String goodsPriceSuffix;
  String introducBrife;
  String goodsImage;
  String goodsPricePrefix;
  String goodsTitle;
  String goodsPrice;

  Nodes({this.functionId, this.userInfoSns, this.enc, this.jumpStyle, this.jumpInfo, this.title, this.clickMta, this.updateRedDotTime, this.subtitle, this.showRedDot, this.expoMta, this.introducTitle, this.goodsPriceSuffix, this.introducBrife, this.goodsImage, this.goodsPricePrefix, this.goodsTitle, this.goodsPrice});

  Nodes.fromJson(Map<String, dynamic> json) {
    functionId = json['functionId'];
    userInfoSns = json['userInfoSns'];
    enc = json['enc'];
    jumpStyle = json['jumpStyle'];
    jumpInfo = json['jumpInfo'] != null ? new JumpInfo.fromJson(json['jumpInfo']) : null;
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    clickMta = json['clickMta'] != null ? new ClickMta.fromJson(json['clickMta']) : null;
    updateRedDotTime = json['updateRedDotTime'];
    subtitle = json['subtitle'] != null ? new Title.fromJson(json['subtitle']) : null;
    showRedDot = json['showRedDot'];
    expoMta = json['expoMta'] != null ? new ExpoMta.fromJson(json['expoMta']) : null;
    introducTitle = json['introducTitle'];
    goodsPriceSuffix = json['goodsPriceSuffix'];
    introducBrife = json['introducBrife'];
    goodsImage = json['goodsImage'];
    goodsPricePrefix = json['goodsPricePrefix'];
    goodsTitle = json['goodsTitle'];
    goodsPrice = json['goodsPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['functionId'] = this.functionId;
    data['userInfoSns'] = this.userInfoSns;
    data['enc'] = this.enc;
    data['jumpStyle'] = this.jumpStyle;
    if (this.jumpInfo != null) {
      data['jumpInfo'] = this.jumpInfo.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.clickMta != null) {
      data['clickMta'] = this.clickMta.toJson();
    }
    data['updateRedDotTime'] = this.updateRedDotTime;
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle.toJson();
    }
    data['showRedDot'] = this.showRedDot;
    if (this.expoMta != null) {
      data['expoMta'] = this.expoMta.toJson();
    }
    data['introducTitle'] = this.introducTitle;
    data['goodsPriceSuffix'] = this.goodsPriceSuffix;
    data['introducBrife'] = this.introducBrife;
    data['goodsImage'] = this.goodsImage;
    data['goodsPricePrefix'] = this.goodsPricePrefix;
    data['goodsTitle'] = this.goodsTitle;
    data['goodsPrice'] = this.goodsPrice;
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

class ClickMta {
  String eventParam;
  String eventId;
  String pageId;
  String pageLevel;

  ClickMta({this.eventParam, this.eventId, this.pageId, this.pageLevel});

  ClickMta.fromJson(Map<String, dynamic> json) {
    eventParam = json['eventParam'];
    eventId = json['eventId'];
    pageId = json['pageId'];
    pageLevel = json['pageLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventParam'] = this.eventParam;
    data['eventId'] = this.eventId;
    data['pageId'] = this.pageId;
    data['pageLevel'] = this.pageLevel;
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

