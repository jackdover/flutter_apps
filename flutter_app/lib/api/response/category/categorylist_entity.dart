class CategoryListEntity {
  String code;
  List<CatelogyList> catelogyList;

  CategoryListEntity({this.code, this.catelogyList});

  CategoryListEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['catelogyList'] != null) {
      catelogyList = new List<CatelogyList>();
      json['catelogyList'].forEach((v) {
        catelogyList.add(new CatelogyList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.catelogyList != null) {
      data['catelogyList'] = this.catelogyList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CatelogyList {
  int level;
  String name;
  int cid;
  bool isIndividual;
  List<MergeCatalogs> mergeCatalogs;
  bool showTab;

  CatelogyList(
      {this.level,
        this.name,
        this.cid,
        this.isIndividual,
        this.mergeCatalogs,
        this.showTab});

  CatelogyList.fromJson(Map<String, dynamic> json) {
    level = json['level'];
    name = json['name'];
    cid = json['cid'];
    isIndividual = json['isIndividual'];
    if (json['mergeCatalogs'] != null) {
      mergeCatalogs = new List<MergeCatalogs>();
      json['mergeCatalogs'].forEach((v) {
        mergeCatalogs.add(new MergeCatalogs.fromJson(v));
      });
    }
    showTab = json['showTab'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['level'] = this.level;
    data['name'] = this.name;
    data['cid'] = this.cid;
    data['isIndividual'] = this.isIndividual;
    if (this.mergeCatalogs != null) {
      data['mergeCatalogs'] =
          this.mergeCatalogs.map((v) => v.toJson()).toList();
    }
    data['showTab'] = this.showTab;
    return data;
  }
}

class MergeCatalogs {
  int id;
  String name;
  int order;
  int level;

  MergeCatalogs({this.id, this.name, this.order, this.level});

  MergeCatalogs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    data['level'] = this.level;
    return data;
  }
}
