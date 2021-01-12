class SubCategoryEntity {
  String code;
  List<SubCategoryItemData> data;

  SubCategoryEntity({this.code, this.data});

  SubCategoryEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = new List<SubCategoryItemData>();
      json['data'].forEach((v) {
        data.add(new SubCategoryItemData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategoryItemData {
  bool isBook;
  bool rankingFlag;
  List<CatelogyList> catelogyList;
  int columNum;
  String icon;
  String name;
  bool specialUi;
  int cid;

  SubCategoryItemData(
      {this.isBook,
        this.rankingFlag,
        this.catelogyList,
        this.columNum,
        this.icon,
        this.name,
        this.specialUi,
        this.cid});

  SubCategoryItemData.fromJson(Map<String, dynamic> json) {
    isBook = json['isBook'];
    rankingFlag = json['rankingFlag'];
    if (json['catelogyList'] != null) {
      catelogyList = new List<CatelogyList>();
      json['catelogyList'].forEach((v) {
        catelogyList.add(new CatelogyList.fromJson(v));
      });
    }
    columNum = json['columNum'];
    icon = json['icon'];
    name = json['name'];
    specialUi = json['special_ui'];
    cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isBook'] = this.isBook;
    data['rankingFlag'] = this.rankingFlag;
    if (this.catelogyList != null) {
      data['catelogyList'] = this.catelogyList.map((v) => v.toJson()).toList();
    }
    data['columNum'] = this.columNum;
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['special_ui'] = this.specialUi;
    data['cid'] = this.cid;
    return data;
  }
}

class CatelogyList {
  String path;
  int isRealid;
  String sortKey;
  bool isMerger;
  String icon;
  String name;
  int virtualFlag;
  bool isIndividual;
  String searchKey;
  int cid;

  CatelogyList(
      {this.path,
        this.isRealid,
        this.sortKey,
        this.isMerger,
        this.icon,
        this.name,
        this.virtualFlag,
        this.isIndividual,
        this.searchKey,
        this.cid});

  CatelogyList.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    isRealid = json['isRealid'];
    sortKey = json['sortKey'];
    isMerger = json['isMerger'];
    icon = json['icon'];
    name = json['name'];
    virtualFlag = json['virtualFlag'];
    isIndividual = json['isIndividual'];
    searchKey = json['searchKey'];
    cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['isRealid'] = this.isRealid;
    data['sortKey'] = this.sortKey;
    data['isMerger'] = this.isMerger;
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['virtualFlag'] = this.virtualFlag;
    data['isIndividual'] = this.isIndividual;
    data['searchKey'] = this.searchKey;
    data['cid'] = this.cid;
    return data;
  }
}
