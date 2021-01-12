class WelcomeHomeEntity {
	String naviVer;
	String toTopBtnImg;
	String configDisplayVersion;
	String userCategory;
	int executeTime;
	String topBgImgBig;
	String personalSourceValue;
	int popMessage;
	String searchBgColor;
	String displayVersion;
	int tagAnimations;
	int showLightIcon;
	bool canBeDefault;
	String loginText;
	List<FloorList> floorList;
	String toBottomBtnImg;
	int cycNum;
	int useNewBrands;
	int alignedCurrentTime;
	String cycFirstTimeStamp;
	String searchBgImg;
	String code;
	int appCenterAnimations;
	int skinSwitch;
	int topIconText;
	int useComponentImg;
	String topBgImgBigColor;
	int appCenterCartoonSwitch;
	String topBgImg;
	String recommendAB;
	int lazy;
	List<WebViewFloorList> webViewFloorList;

	WelcomeHomeEntity({this.naviVer, this.toTopBtnImg, this.configDisplayVersion, this.userCategory, this.executeTime, this.topBgImgBig, this.personalSourceValue, this.popMessage, this.searchBgColor, this.displayVersion, this.tagAnimations, this.showLightIcon, this.canBeDefault, this.loginText, this.floorList, this.toBottomBtnImg, this.cycNum, this.useNewBrands, this.alignedCurrentTime, this.cycFirstTimeStamp, this.searchBgImg, this.code, this.appCenterAnimations, this.skinSwitch,   this.topIconText, this.useComponentImg, this.topBgImgBigColor, this.appCenterCartoonSwitch, this.topBgImg, this.recommendAB, this.lazy, this.webViewFloorList});

	WelcomeHomeEntity.fromJson(Map<String, dynamic> json) {
		naviVer = json['naviVer'];
		toTopBtnImg = json['toTopBtnImg'];
		configDisplayVersion = json['configDisplayVersion'];
		userCategory = json['userCategory'];
		executeTime = json['executeTime'];
		topBgImgBig = json['topBgImgBig'];
		personalSourceValue = json['personalSourceValue'];
		popMessage = json['popMessage'];
		searchBgColor = json['searchBgColor'];
		displayVersion = json['displayVersion'];
		tagAnimations = json['tagAnimations'];
		showLightIcon = json['showLightIcon'];
		canBeDefault = json['canBeDefault'];
		loginText = json['loginText'];
		if (json['floorList'] != null) {
			floorList = new List<FloorList>();
			json['floorList'].forEach((v) { floorList.add(new FloorList.fromJson(v)); });
		}
		toBottomBtnImg = json['toBottomBtnImg'];
		cycNum = json['cycNum'];
		useNewBrands = json['use_new_brands'];
		alignedCurrentTime = json['alignedCurrentTime'];
		cycFirstTimeStamp = json['cycFirstTimeStamp'];
		searchBgImg = json['searchBgImg'];
		code = json['code'];
		appCenterAnimations = json['appCenterAnimations'];
		skinSwitch = json['skinSwitch'];

		topIconText = json['topIconText'];
		useComponentImg = json['useComponentImg'];
		topBgImgBigColor = json['topBgImgBigColor'];
		appCenterCartoonSwitch = json['appCenterCartoonSwitch'];
		topBgImg = json['topBgImg'];
		recommendAB = json['recommendAB'];
		lazy = json['lazy'];
		if (json['webViewFloorList'] != null) {
			webViewFloorList = new List<WebViewFloorList>();
			json['webViewFloorList'].forEach((v) { webViewFloorList.add(new WebViewFloorList.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['naviVer'] = this.naviVer;
		data['toTopBtnImg'] = this.toTopBtnImg;
		data['configDisplayVersion'] = this.configDisplayVersion;
		data['userCategory'] = this.userCategory;
		data['executeTime'] = this.executeTime;
		data['topBgImgBig'] = this.topBgImgBig;
		data['personalSourceValue'] = this.personalSourceValue;
		data['popMessage'] = this.popMessage;
		data['searchBgColor'] = this.searchBgColor;
		data['displayVersion'] = this.displayVersion;
		data['tagAnimations'] = this.tagAnimations;
		data['showLightIcon'] = this.showLightIcon;
		data['canBeDefault'] = this.canBeDefault;
		data['loginText'] = this.loginText;
		if (this.floorList != null) {
			data['floorList'] = this.floorList.map((v) => v.toJson()).toList();
		}
		data['toBottomBtnImg'] = this.toBottomBtnImg;
		data['cycNum'] = this.cycNum;
		data['use_new_brands'] = this.useNewBrands;
		data['alignedCurrentTime'] = this.alignedCurrentTime;
		data['cycFirstTimeStamp'] = this.cycFirstTimeStamp;
		data['searchBgImg'] = this.searchBgImg;
		data['code'] = this.code;
		data['appCenterAnimations'] = this.appCenterAnimations;
		data['skinSwitch'] = this.skinSwitch;

		data['topIconText'] = this.topIconText;
		data['useComponentImg'] = this.useComponentImg;
		data['topBgImgBigColor'] = this.topBgImgBigColor;
		data['appCenterCartoonSwitch'] = this.appCenterCartoonSwitch;
		data['topBgImg'] = this.topBgImg;
		data['recommendAB'] = this.recommendAB;
		data['lazy'] = this.lazy;
		if (this.webViewFloorList != null) {
			data['webViewFloorList'] = this.webViewFloorList.map((v) => v.toJson()).toList();
		}
		return data;
	}
}

class FloorList {
	int curve;
	List<Content> content;
	int bottomMargin;
	int isNewStyle;
	String showName;
	int isShadow;
	String type;
	int slipTime;
	String textColor;
	String logoImage;
	String cornerDegree;
	int marginTop;
	String img;
	int headType;
	int marginHorizontal;
	int bottomMarginWidth;
	String bottomMarginColor;
	String expo;
	String rightCorner;
	Jump jump;
	int innnerInterval;
	String rightCornerColor;
	String marginColor;
	int floorId;
	int verticalInterval;
	int floorOrder;
	int head;
	String bottomColor;
	String rightCornerImg;
	String bgColor;
	int showLines;
	int showShadow;
	int needUpdate;
	String floorDisplayVersion;
	Jump moreJump;
	String param;
	String shareAvatar;
	String shareTitle;
	String shareContent;
	String jumpTo;
	int jumpType;
	String functionId;
	String sourceValue;
	String url;
	String shareUrl;
	int isShare;

	FloorList({this.curve, this.content, this.bottomMargin, this.isNewStyle, this.showName, this.isShadow, this.type, this.slipTime, this.textColor, this.logoImage, this.cornerDegree, this.marginTop, this.img, this.headType, this.marginHorizontal, this.bottomMarginWidth, this.bottomMarginColor, this.expo, this.rightCorner, this.jump, this.innnerInterval, this.rightCornerColor, this.marginColor, this.floorId, this.verticalInterval, this.floorOrder, this.head, this.bottomColor, this.rightCornerImg, this.bgColor, this.showLines, this.showShadow, this.needUpdate, this.floorDisplayVersion, this.moreJump, this.param, this.shareAvatar, this.shareTitle, this.shareContent, this.jumpTo, this.jumpType, this.functionId, this.sourceValue, this.url, this.shareUrl, this.isShare});

	FloorList.fromJson(Map<String, dynamic> json) {
		curve = json['curve'];
		if (json['content'] != null) {
			content = new List<Content>();
			json['content'].forEach((v) { content.add(new Content.fromJson(v)); });
		}
		bottomMargin = json['bottomMargin'];
		isNewStyle = json['isNewStyle'];
		showName = json['showName'];
		isShadow = json['isShadow'];
		type = json['type'];
		slipTime = json['slipTime'];
		textColor = json['textColor'];
		logoImage = json['logoImage'];
		cornerDegree = json['cornerDegree'];
		marginTop = json['marginTop'];
		img = json['img'];
		headType = json['headType'];
		marginHorizontal = json['marginHorizontal'];
		bottomMarginWidth = json['bottomMarginWidth'];
		bottomMarginColor = json['bottomMarginColor'];
		expo = json['expo'];
		rightCorner = json['rightCorner'];
		jump = json['jump'] != null ? new Jump.fromJson(json['jump']) : null;
		innnerInterval = json['innnerInterval'];
		rightCornerColor = json['rightCornerColor'];
		marginColor = json['marginColor'];
		floorId = json['floorId'];
		verticalInterval = json['verticalInterval'];
		floorOrder = json['floorOrder'];
		head = json['head'];
		bottomColor = json['bottomColor'];
		rightCornerImg = json['rightCornerImg'];
		bgColor = json['bgColor'];
		showLines = json['showLines'];
		showShadow = json['showShadow'];
		needUpdate = json['needUpdate'];
		floorDisplayVersion = json['floorDisplayVersion'];
		moreJump = json['moreJump'] != null ? new Jump.fromJson(json['moreJump']) : null;
		param = json['param'];
		shareAvatar = json['shareAvatar'];
		shareTitle = json['shareTitle'];
		shareContent = json['shareContent'];
		jumpTo = json['jumpTo'];
		jumpType = json['jumpType'];
		functionId = json['functionId'];
		sourceValue = json['sourceValue'];
		url = json['url'];
		shareUrl = json['shareUrl'];
		isShare = json['isShare'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['curve'] = this.curve;
		if (this.content != null) {
			data['content'] = this.content.map((v) => v.toJson()).toList();
		}
		data['bottomMargin'] = this.bottomMargin;
		data['isNewStyle'] = this.isNewStyle;
		data['showName'] = this.showName;
		data['isShadow'] = this.isShadow;
		data['type'] = this.type;
		data['slipTime'] = this.slipTime;
		data['textColor'] = this.textColor;
		data['logoImage'] = this.logoImage;
		data['cornerDegree'] = this.cornerDegree;
		data['marginTop'] = this.marginTop;
		data['img'] = this.img;
		data['headType'] = this.headType;
		data['marginHorizontal'] = this.marginHorizontal;
		data['bottomMarginWidth'] = this.bottomMarginWidth;
		data['bottomMarginColor'] = this.bottomMarginColor;
		data['expo'] = this.expo;
		data['rightCorner'] = this.rightCorner;
		if (this.jump != null) {
			data['jump'] = this.jump.toJson();
		}
		data['innnerInterval'] = this.innnerInterval;
		data['rightCornerColor'] = this.rightCornerColor;
		data['marginColor'] = this.marginColor;
		data['floorId'] = this.floorId;
		data['verticalInterval'] = this.verticalInterval;
		data['floorOrder'] = this.floorOrder;
		data['head'] = this.head;
		data['bottomColor'] = this.bottomColor;
		data['rightCornerImg'] = this.rightCornerImg;
		data['bgColor'] = this.bgColor;
		data['showLines'] = this.showLines;
		data['showShadow'] = this.showShadow;
		data['needUpdate'] = this.needUpdate;
		data['floorDisplayVersion'] = this.floorDisplayVersion;
		if (this.moreJump != null) {
			data['moreJump'] = this.moreJump.toJson();
		}
		data['param'] = this.param;
		data['shareAvatar'] = this.shareAvatar;
		data['shareTitle'] = this.shareTitle;
		data['shareContent'] = this.shareContent;
		data['jumpTo'] = this.jumpTo;
		data['jumpType'] = this.jumpType;
		data['functionId'] = this.functionId;
		data['sourceValue'] = this.sourceValue;
		data['url'] = this.url;
		data['shareUrl'] = this.shareUrl;
		data['isShare'] = this.isShare;
		return data;
	}
}

class Content {
	String extensionId;
	int activityId;
	int sortno;
	String abt;
	String title;
	int wareDisplayType;
	String horizontalImag;
	String sourceTag;
	String exposalUrl;
	String clickUrl;
	Jump jump;

	Content({this.extensionId, this.activityId, this.sortno, this.abt, this.title, this.wareDisplayType, this.horizontalImag, this.sourceTag, this.exposalUrl, this.clickUrl, this.jump});

	Content.fromJson(Map<String, dynamic> json) {
		extensionId = json['extension_id'];
		activityId = json['activityId'];
		sortno = json['sortno'];
		abt = json['abt'];
		title = json['title'];
		wareDisplayType = json['wareDisplayType'];
		horizontalImag = json['horizontalImag'];
		sourceTag = json['sourceTag'];
		exposalUrl = json['exposalUrl'];
		clickUrl = json['clickUrl'];
		jump = json['jump'] != null ? new Jump.fromJson(json['jump']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['extension_id'] = this.extensionId;
		data['activityId'] = this.activityId;
		data['sortno'] = this.sortno;
		data['abt'] = this.abt;
		data['title'] = this.title;
		data['wareDisplayType'] = this.wareDisplayType;
		data['horizontalImag'] = this.horizontalImag;
		data['sourceTag'] = this.sourceTag;
		data['exposalUrl'] = this.exposalUrl;
		data['clickUrl'] = this.clickUrl;
		if (this.jump != null) {
			data['jump'] = this.jump.toJson();
		}
		return data;
	}
}

class Jump {
	String des;
	Params params;
	String srv;

	Jump({this.des, this.params, this.srv});

	Jump.fromJson(Map<String, dynamic> json) {
		des = json['des'];
		params = json['params'] != null ? new Params.fromJson(json['params']) : null;
		srv = json['srv'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['des'] = this.des;
		if (this.params != null) {
			data['params'] = this.params.toJson();
		}
		data['srv'] = this.srv;
		return data;
	}
}

class Params {
	String url;

	Params({this.url});

	Params.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}



class WebViewFloorList {
	int curve;
	int showTimes;
	String logoImage;
	String cornerDegree;
	int passthrough;
	int marginHorizontal;
	String type;
	String rightCorner;
	int floorId;
	String showName;
	int moduleFunction;
	int floorOrder;
	int head;
	int resultHeight;
	String rightCornerImg;
	int bottomMargin;
	String sourceValue;
	String textColor;
	int marginTop;
	int bottomMarginWidth;
	int headType;
	String bottomMarginColor;
	Jump jump;
	String marginColor;
	String rightCornerColor;
	int innnerInterval;
	List<WebViewList> webViewList;
	int refreshHeight;
	int verticalInterval;
	int animationTime;
	String tips;
	String bottomColor;

	WebViewFloorList({this.curve, this.showTimes, this.logoImage, this.cornerDegree, this.passthrough, this.marginHorizontal, this.type, this.rightCorner, this.floorId, this.showName, this.moduleFunction, this.floorOrder, this.head, this.resultHeight, this.rightCornerImg, this.bottomMargin, this.sourceValue, this.textColor, this.marginTop, this.bottomMarginWidth, this.headType, this.bottomMarginColor, this.jump, this.marginColor, this.rightCornerColor, this.innnerInterval, this.webViewList, this.refreshHeight, this.verticalInterval, this.animationTime, this.tips, this.bottomColor});

	WebViewFloorList.fromJson(Map<String, dynamic> json) {
		curve = json['curve'];
		showTimes = json['showTimes'];
		logoImage = json['logoImage'];
		cornerDegree = json['cornerDegree'];
		passthrough = json['passthrough'];
		marginHorizontal = json['marginHorizontal'];
		type = json['type'];
		rightCorner = json['rightCorner'];
		floorId = json['floorId'];
		showName = json['showName'];
		moduleFunction = json['moduleFunction'];
		floorOrder = json['floorOrder'];
		head = json['head'];
		resultHeight = json['resultHeight'];
		rightCornerImg = json['rightCornerImg'];
		bottomMargin = json['bottomMargin'];
		sourceValue = json['sourceValue'];
		textColor = json['textColor'];
		marginTop = json['marginTop'];
		bottomMarginWidth = json['bottomMarginWidth'];
		headType = json['headType'];
		bottomMarginColor = json['bottomMarginColor'];
		jump = json['jump'] != null ? new Jump.fromJson(json['jump']) : null;
		marginColor = json['marginColor'];
		rightCornerColor = json['rightCornerColor'];
		innnerInterval = json['innnerInterval'];
		if (json['webViewList'] != null) {
			webViewList = new List<WebViewList>();
			json['webViewList'].forEach((v) { webViewList.add(new WebViewList.fromJson(v)); });
		}
		refreshHeight = json['refreshHeight'];
		verticalInterval = json['verticalInterval'];
		animationTime = json['animationTime'];
		tips = json['tips'];
		bottomColor = json['bottomColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['curve'] = this.curve;
		data['showTimes'] = this.showTimes;
		data['logoImage'] = this.logoImage;
		data['cornerDegree'] = this.cornerDegree;
		data['passthrough'] = this.passthrough;
		data['marginHorizontal'] = this.marginHorizontal;
		data['type'] = this.type;
		data['rightCorner'] = this.rightCorner;
		data['floorId'] = this.floorId;
		data['showName'] = this.showName;
		data['moduleFunction'] = this.moduleFunction;
		data['floorOrder'] = this.floorOrder;
		data['head'] = this.head;
		data['resultHeight'] = this.resultHeight;
		data['rightCornerImg'] = this.rightCornerImg;
		data['bottomMargin'] = this.bottomMargin;
		data['sourceValue'] = this.sourceValue;
		data['textColor'] = this.textColor;
		data['marginTop'] = this.marginTop;
		data['bottomMarginWidth'] = this.bottomMarginWidth;
		data['headType'] = this.headType;
		data['bottomMarginColor'] = this.bottomMarginColor;
		if (this.jump != null) {
			data['jump'] = this.jump.toJson();
		}
		data['marginColor'] = this.marginColor;
		data['rightCornerColor'] = this.rightCornerColor;
		data['innnerInterval'] = this.innnerInterval;
		if (this.webViewList != null) {
			data['webViewList'] = this.webViewList.map((v) => v.toJson()).toList();
		}
		data['refreshHeight'] = this.refreshHeight;
		data['verticalInterval'] = this.verticalInterval;
		data['animationTime'] = this.animationTime;
		data['tips'] = this.tips;
		data['bottomColor'] = this.bottomColor;
		return data;
	}
}

class WebViewList {
	String img;
	String expo;
	String wordsColor;
	Jump jump;

	WebViewList({this.img, this.expo, this.wordsColor, this.jump});

	WebViewList.fromJson(Map<String, dynamic> json) {
		img = json['img'];
		expo = json['expo'];
		wordsColor = json['wordsColor'];
		jump = json['jump'] != null ? new Jump.fromJson(json['jump']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['img'] = this.img;
		data['expo'] = this.expo;
		data['wordsColor'] = this.wordsColor;
		if (this.jump != null) {
			data['jump'] = this.jump.toJson();
		}
		return data;
	}
}
