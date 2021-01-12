import 'package:json_annotation/json_annotation.dart';

// HomeGoods.g.dart 将在我们运行生成命令后自动生成
part 'HomeGoods.g.dart';

@JsonSerializable()
class HomeGoods {
  int tabId;
  String code;
  String new900UIStrategy;
  int waterFallStrategy;
  String playCompleteState;
  int isPreload;
  String isEnableDarkMode;
  String title;
  bool animationSwitchOfTabs;
  String waterFlow;
  String callNewMixerStrategy;
  bool isOpenMemoryOpt;
  String bgColor;
  FbWizardBean fbWizard;
  bool newTabUI;
  String publicTest;
  String publicTestBubble;
  String feedBackImmediateEffect;
  String darkModeBgColor;
  String videoWareWifiPlay;
  int tipsIndex;
  String expid;
  List<TabsBean> tabs;
  List<String> tabsColor;
  List<String> darkModeTabsColor;
  List<WareInfoListBean> wareInfoList;

  HomeGoods(
      this.tabId,
      @JsonKey(name: 'code') this.code,
      this.new900UIStrategy,
      this.waterFallStrategy,
      this.playCompleteState,
      this.isPreload,
      this.isEnableDarkMode,
      this.title,
      this.animationSwitchOfTabs,
      this.waterFlow,
      this.callNewMixerStrategy,
      this.isOpenMemoryOpt,
      this.bgColor,
      this.fbWizard,
      this.newTabUI,
      this.publicTest,
      this.publicTestBubble,
      this.feedBackImmediateEffect,
      this.darkModeBgColor,
      this.videoWareWifiPlay,
      this.tipsIndex,
      this.expid,
      this.tabs,
      this.tabsColor,
      this.darkModeTabsColor,
      this.wareInfoList);

  //不同的类使用不同的mixin即可
  factory HomeGoods.fromJson(Map<String, dynamic> json) => _$HomeGoodsFromJson(json);

  Map<String, dynamic> toJson() => _$HomeGoodsToJson(this);
}

@JsonSerializable()
class FbWizardBean {
  /**
   * imgUrl : https://m.360buyimg.com/mobilecms/jfs/t3727/29/1535841296/12675/77a595d5/582ac22dN6584def5.png
   * timestamp : 12
   */

  String imgUrl;
  int timestamp;

  FbWizardBean(this.imgUrl, this.timestamp);

  //不同的类使用不同的mixin即可
  factory FbWizardBean.fromJson(Map<String, dynamic> json) => _$FbWizardBeanFromJson(json);

  Map<String, dynamic> toJson() => _$FbWizardBeanToJson(this);
}

@JsonSerializable()
class TabsBean {
  /**
   * tabId : 10220519
   * title : 精选
   * subtitle : 为你推荐
   * broker_info : eyJwIjoiNjYwMDExIiwidGFnIjoiLTEiLCJjc191c2VyIjoiMiIsInBhbGFudGlyX2V4cGlkcyI6IlJ8TUlYVEFHX1JSfCIsImV4cGlkIjoiRDFATHRhYnJhbmtAOTAyLEQxQExtdWx0aWFsbEAxNjAwLEQxQExtdWx0aXRhYkAxNTAxIiwicmVxc2lnIjoiMzNlNWVmNzU3MDkzZGZjYjcyZjMyOWE4ZDcyYjQ4NzgyYWJkMGRmZCJ9
   */

  int tabId;
  String title;
  String subtitle;
  String broker_info;

  TabsBean(this.tabId, this.title, this.subtitle, this.broker_info);

  //不同的类使用不同的mixin即可
  factory TabsBean.fromJson(Map<String, dynamic> json) => _$TabsBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TabsBeanToJson(this);
}

@JsonSerializable()
class WareInfoListBean {
  /**
   * itemType : 0
   * rt : 0
   * wareId : 69265857067
   * wname : 【小鬼同款】I Do BOOM瓷系列 18K金真钻石锁骨项链女玫瑰金吊坠节日礼物ido 皮绳50cm/白陶
   * markType : 0
   * isMonetized : false
   * imageurl : https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp
   * imageurlType : 0
   * good : 100%
   * commentCount : 99
   * jdPrice : 1999.00
   * isSamWare : false
   * isPlusWare : false
   * isPinGouWare : false
   * isFansWare : false
   * book : false
   * promotion : false
   * mp : 0
   * feminine : false
   * extension_id : {"ad":"1207","ch":"2","sku":"69265857067","ts":"1593160045","uniqid":"{\"material_id\":\"2212844816\",\"pos_id\":\"1207\",\"sid\":\"1bd3c3b3-a224-4bf9-805e-3f0d7ed46165\"}"}
   * couponInfo : 领券满1500减1000
   * interactive : 1
   * seedPage : 1
   * seedIndex : 0
   * client_exposal_url : https://sh.jd.com/d?fl=dZBbwAvxvhzflSjZutK4W4MiXBrkwpdVj-3Y27-tf-oYUW_4TrOSiFV5XlkC3BL9REiEs7mYn5PWtazXTvupY2KVKSiNHNydRC6vn7MPpmKJDDrxmE8KK38-a4IqEoBXxeCjAal5n3K-YRDYSdD1IBkVFi5cUZIwf4fervJDrKDdsby1WP-yP57reOCSLTxo
   * client_click_url : https://ccc-x.jd.com/dsp/nc?ext=aHR0cDovL2l0ZW0ubS5qZC5jb20vcHJvZHVjdC82OTI2NTg1NzA2Ny5odG1s&log=3vD9RDcbutOkrC4EF2uVlCN5HFIppiTVvlJSd-BbbsML-97JSFO_PtPg1660QqmMlWeMfcJcEQb_PvxDvPVy8NqC2NWuzivpQ38DWyI-ZVDZKtoQcXJ4ecG1-1794VNFK-8HJc3RUxufcsEftUzqawmGvWguCHGk9na89bvVKVpN-c8HXOYKBpuQsON4OHhZnK3FkL0sNowAGUfbMMPIgyh91sdvyVYoNsHOonZpoPzBEB-0cBkF_imiNjHu-iTcHluxOJFpcuRbOX3BWSlwf7rXNb9oHM69SHBOJ8PRsL08qzNr73VRLLDQWJFH6J7Sw6tjU3rQ-b03-WyD65jZG91u64yxh6hiYr-_YRZ_HQAJ9imz7cVj1a7e64VF3nBOMjt0G0Hufe57Qs3MiBgsIU-eYnYuSjkgB-nOowoT_XBN-GQZfjb8V0Uvv1HT6koy7daukQvN0bogcQD7P3igtZ0nOXg_N7jrWWWLUXpNCvdZVfWZWfqNkR7B3veFz7b0UqACYwb6y7VDeFUrLTso4NNQZjOcg0K2bfKtV8r6HvtSGdFaeSJJhd9NCNJvZDUTYoOoZJI_2RC0SCuJ0RrfyfBNNH06is22fl6sPdXC3Ne4tw-530Mt6_dFnbYB2GA6I3ZEvl5_xLa9ZMaGwxsOs55B7gQCIBo6OAC2EL8Wchzb3NPlRuMbiWvCf5CJ9KjxYEolMbzhk5r1WrcCyjOg7tJMrg0uB8dTIxqBOs01OuJYVYMXO1SCxotosk28Va50UDEwNAgOgd0r7YQwv5FA1XWjR7vZ5hN44yxRQyMN3noHZeS4nnxLsaC294vEJzQelfWEgdnhfZ2bAQWU1TfcOQ&v=404&clicktype=1&
   * canClipTitleImg : true
   * duration : 0
   * exposureJsonSourceValue : {"broker_info":"eyJyZXF1ZXN0X2lkIjoiYTM3NTZlMGMtOGVjMy00ZjZhLWE2NDctNDNmMjY1YWNmZmY2IiwicGFsYW50aXJfZXhwaWRzIjoiWl5SXkF8TUlYVEFHX1peUl5BUixaXlJeQV9OTl9DTF9SLG1ifCJ9","reason":"-100","psource":"9","distance":"-100","monetization":"0","seedindex":"-100","isvideo":"0","promise":"-100","source":"1","seedpage":"-100","storeid":"-100","sid":"1bd3c3b3-a224-4bf9-805e-3f0d7ed46165","empty":"1","cover":"-100","comtyp":"0","jdprice":"-100","pricetype":"-100","saleinfo":"-100","isArrivalPriceBelt":"0","trap":"0","flow":"66","foot":"0","liveSkuStatus":"0","tabindex":"0","index":"0","usertype":"-100","benefit":"-100","displayMode":"-100","plus":0,"loga":"0","p":"660000","footname":"-100","reasonid":"-100","geneid":"10220519","bigsale":"0","beltflowID":"-100","playshow":"0","page":"1","skutype":"-100","skuid":"69265857067","jumptype":"0","expid":"D1@Lrecall@1005,D1@Lproduct@1404,D1@Lstrategy@1106,D1@Lmultitab@1501,D1@Lfilter@1204,D1@Ldynamic@1304,D1@Lmultiall@1600","promotion":"-100","reqsig":"eb0696e803d1f90ff0350854cc0dd52c851d6d97"}
   * recomReasonStyle : 1
   * freeShippingFlag : 0
   * labelList : [{"resourceCode":"tab_078","key":"newProduct"},{"resourceCode":"tab_var_139","labelTitle":"领券满1500减1000","key":"discountPoint"}]
   * liveSkuStatus : 0
   * goodsType : 1
   * promotionType : 1
   * flow : 66
   * adword :
   * startRemainTime : 0
   * endRemainTime : 0
   * sid : 1bd3c3b3-a224-4bf9-805e-3f0d7ed46165
   * isFeedBackSlide : 0
   * followCount :
   * category1 : 6144
   * category2 : 6160
   * category3 : 6163
   * stockStateId : 33
   * remainNum : -1
   * wareHouseNum : -1
   * clickUrl : http://ccc-x.jd.local/dsp/nc?ext=aHR0cDovL2l0ZW0ubS5qZC5jb20vcHJvZHVjdC82OTI2NTg1NzA2Ny5odG1s&log=3vD9RDcbutOkrC4EF2uVlCN5HFIppiTVvlJSd-BbbsML-97JSFO_PtPg1660QqmMlWeMfcJcEQb_PvxDvPVy8NqC2NWuzivpQ38DWyI-ZVDZKtoQcXJ4ecG1-1794VNFK-8HJc3RUxufcsEftUzqawmGvWguCHGk9na89bvVKVpN-c8HXOYKBpuQsON4OHhZnK3FkL0sNowAGUfbMMPIgyh91sdvyVYoNsHOonZpoPzBEB-0cBkF_imiNjHu-iTcHluxOJFpcuRbOX3BWSlwf7rXNb9oHM69SHBOJ8PRsL08qzNr73VRLLDQWJFH6J7Sw6tjU3rQ-b03-WyD65jZG91u64yxh6hiYr-_YRZ_HQAJ9imz7cVj1a7e64VF3nBOMjt0G0Hufe57Qs3MiBgsIU-eYnYuSjkgB-nOowoT_XBN-GQZfjb8V0Uvv1HT6koy7daukQvN0bogcQD7P3igtZ0nOXg_N7jrWWWLUXpNCvdZVfWZWfqNkR7B3veFz7b0UqACYwb6y7VDeFUrLTso4NNQZjOcg0K2bfKtV8r6HvtSGdFaeSJJhd9NCNJvZDUTYoOoZJI_2RC0SCuJ0RrfyfBNNH06is22fl6sPdXC3Ne4tw-530Mt6_dFnbYB2GA6I3ZEvl5_xLa9ZMaGwxsOs55B7gQCIBo6OAC2EL8Wchzb3NPlRuMbiWvCf5CJ9KjxYEolMbzhk5r1WrcCyjOg7tJMrg0uB8dTIxqBOs01OuKjHSL9AfBuakq7cSRhBF8kCNhDnG9ByqjzqsEfAzxFA2gohUNsH6xRTVy4oAv4hepG-nmbjed1R_TOZSNYn5zUCyxF0dQ-UZQ8YvWNrEVsDA&v=404&clicktype=1&
   * similarEnter : 1
   * canAddCart : 0
   * couponSortType : 0
   * canNegFeedback : 1
   * reqsig : eb0696e803d1f90ff0350854cc0dd52c851d6d97
   * abt : 0
   * isDotScheme : false
   * presaleWare : 0
   * venderId : 163955
   * sourceValue : {"rec2ad":"0","broker_info":"eyJyZXF1ZXN0X2lkIjoiYTM3NTZlMGMtOGVjMy00ZjZhLWE2NDctNDNmMjY1YWNmZmY2IiwicGFsYW50aXJfZXhwaWRzIjoiWl5SXkF8TUlYVEFHX1peUl5BUixaXlJeQV9OTl9DTF9SLG1ifCJ9","reason":"-100","psource":"9","distance":"-100","monetization":"0","seedindex":"-100","isvideo":"0","promise":"-100","source":"1","seedpage":"-100","storeid":"-100","sid":"1bd3c3b3-a224-4bf9-805e-3f0d7ed46165","cover":"-100","comtyp":"0","jdprice":"-100","pricetype":"-100","saleinfo":"-100","isArrivalPriceBelt":"0","trap":"0","flow":"66","foot":"0","liveSkuStatus":"0","tabindex":"0","index":"0","usertype":"-100","benefit":"-100","displayMode":"-100","loga":"0","p":"660000","footname":"-100","reasonid":"-100","geneid":"10220519","bigsale":"0","beltflowID":"-100","playshow":"0","page":"1","skutype":"-100","skuid":"69265857067","jumptype":"0","expid":"D1@Lrecall@1005,D1@Lproduct@1404,D1@Lstrategy@1106,D1@Lmultitab@1501,D1@Lfilter@1204,D1@Ldynamic@1304,D1@Lmultiall@1600","promotion":"-100","reqsig":"eb0696e803d1f90ff0350854cc0dd52c851d6d97"}
   * sourceValueFeedback : {"tabid":"10220519","broker_info":"eyJyZXF1ZXN0X2lkIjoiYTM3NTZlMGMtOGVjMy00ZjZhLWE2NDctNDNmMjY1YWNmZmY2IiwicGFsYW50aXJfZXhwaWRzIjoiWl5SXkF8TUlYVEFHX1peUl5BUixaXlJeQV9OTl9DTF9SLG1ifCJ9","index":"0","page":"1","source":"1","skuid":"69265857067","flow":"66","sid":"1bd3c3b3-a224-4bf9-805e-3f0d7ed46165","expid":"D1@Lrecall@1005,D1@Lproduct@1404,D1@Lstrategy@1106,D1@Lmultitab@1501,D1@Lfilter@1204,D1@Ldynamic@1304,D1@Lmultiall@1600","reqsig":"eb0696e803d1f90ff0350854cc0dd52c851d6d97"}
   * sourceValueSimilar : {"index":"0","page":"1","source":"1","skuid":"69265857067","flow":"66","sid":"1bd3c3b3-a224-4bf9-805e-3f0d7ed46165","expid":"D1@Lrecall@1005,D1@Lproduct@1404,D1@Lstrategy@1106,D1@Lmultitab@1501,D1@Lfilter@1204,D1@Ldynamic@1304,D1@Lmultiall@1600","reqsig":"eb0696e803d1f90ff0350854cc0dd52c851d6d97"}
   * source : 1
   * exposureSourceValue : 69265857067#eb0696e803d1f90ff0350854cc0dd52c851d6d97#1bd3c3b3-a224-4bf9-805e-3f0d7ed46165#66#1#0#D1@Lrecall@1005,D1@Lproduct@1404,D1@Lstrategy@1106,D1@Lmultitab@1501,D1@Lfilter@1204,D1@Ldynamic@1304,D1@Lmultiall@1600#-100#-100#1#0#-100#0#10220519#0#1#-100#0#0#-100#0#0#0#0#-100#-100#-100#9#660000#0#0#-100#eyJyZXF1ZXN0X2lkIjoiYTM3NTZlMGMtOGVjMy00ZjZhLWE2NDctNDNmMjY1YWNmZmY2IiwicGFsYW50aXJfZXhwaWRzIjoiWl5SXkF8TUlYVEFHX1peUl5BUixaXlJeQV9OTl9DTF9SLG1ifCJ9#0#-100#-100#-100#-100
   * expid : D1@Lrecall@1005,D1@Lproduct@1404,D1@Lstrategy@1106,D1@Lmultitab@1501,D1@Lfilter@1204,D1@Ldynamic@1304,D1@Lmultiall@1600
   * feedBackReason : [{"id":0,"name":"不感兴趣"},{"id":1,"name":"品类不喜欢"},{"id":5,"name":"已经买了"},{"id":6,"name":"商品图引起不适"},{"id":7,"name":"涉及隐私"}]
   * feedBackStrategy : B
   * spu : 69265857064
   * jdShop : false
   * markImageUrl : https://m.360buyimg.com/mobilecms/jfs/t3550/170/1022007648/4411/2aa81f7d/581aee98N564e678b.png
   * markHeight : 13
   * markWidth : 37
   * recomTips : 已为您挑选了【瑞表】相关商品！
   * recomTipsIndex : 2
   * trackRecomTips : 13673#44484153453#2
   * expoUrl : https://homepage-gw.jd.com/npromotion/homeExpo?type=recommend&expoInfo=TIPS_4df295e647c3a6dd06bf4ecfb8634c001c8b2caa_1593160045699
   * icon2 : tab_031
   * isOpenApp : 0
   * channelUnderSourceValue : {"rec2ad":"0","footname":"排行榜","reasonid":"-100","geneid":"10220519","index":"2","pricetype":"-100","page":"1","source":"1","skuid":"40039687444","flow":"66","sid":"1bd3c3b3-a224-4bf9-805e-3f0d7ed46165","promotion":"-100"}
   * channelUnderIcon : http://m.360buyimg.com/cc/jfs/t1/122548/20/1282/3190/5ebb64feE7980a5e8/971e1b9e1398571c.png
   * channelUnderName : 钻石项链/吊坠热卖榜第2名
   * channelUnderUrl : openapp.jdmobile://virtual?params={"modulename":"JDReactRankingList","des":"jdreactcommon","category":"jump","param":{"detailPageType":"5","rankType":"10","contentId":"6609","fromSkuId":"40039687444"},"appname":"JDReactRankingList","ishidden":true,"fromName":"","transparentenable":true}
   */

  int itemType;
  int rt;
  String wareId;
  String wname;
  int markType;
  bool isMonetized;
  String imageurl;
  int imageurlType;
  String good;
  String commentCount;
  String jdPrice;
  bool isSamWare;
  bool isPlusWare;
  bool isPinGouWare;
  bool isFansWare;
  String book;
  String promotion;
  int mp;
  bool feminine;
  String extension_id;
  String couponInfo;
  String interactive;
  String seedPage;
  String seedIndex;
  String client_exposal_url;
  String client_click_url;
  bool canClipTitleImg;
  int duration;
  String exposureJsonSourceValue;
  String recomReasonStyle;
  String freeShippingFlag;
  String liveSkuStatus;
  int goodsType;
  int promotionType;
  String flow;
  String adword;
  int startRemainTime;
  int endRemainTime;
  String sid;
  int isFeedBackSlide;
  String followCount;
  String category1;
  String category2;
  String category3;
  int stockStateId;
  int remainNum;
  String wareHouseNum;
  String clickUrl;
  String similarEnter;
  String canAddCart;
  int couponSortType;
  String canNegFeedback;
  String reqsig;
  String abt;
  bool isDotScheme;
  int presaleWare;
  String venderId;
  String sourceValue;
  String sourceValueFeedback;
  String sourceValueSimilar;
  String source;
  String exposureSourceValue;
  String expid;
  String feedBackStrategy;
  String spu;
  bool jdShop;
  String markImageUrl;
  int markHeight;
  int markWidth;
  String recomTips;
  String recomTipsIndex;
  String trackRecomTips;
  String expoUrl;
  String icon2;
  String isOpenApp;
  String channelUnderSourceValue;
  String channelUnderIcon;
  String channelUnderName;
  String channelUnderUrl;
  List<LabelListBean> labelList;
  List<FeedBackReasonBean> feedBackReason;

  WareInfoListBean(
      this.itemType,
      this.rt,
      this.wareId,
      this.wname,
      this.markType,
      this.isMonetized,
      this.imageurl,
      this.imageurlType,
      this.good,
      this.commentCount,
      this.jdPrice,
      this.isSamWare,
      this.isPlusWare,
      this.isPinGouWare,
      this.isFansWare,
      this.book,
      this.promotion,
      this.mp,
      this.feminine,
      this.extension_id,
      this.couponInfo,
      this.interactive,
      this.seedPage,
      this.seedIndex,
      this.client_exposal_url,
      this.client_click_url,
      this.canClipTitleImg,
      this.duration,
      this.exposureJsonSourceValue,
      this.recomReasonStyle,
      this.freeShippingFlag,
      this.liveSkuStatus,
      this.goodsType,
      this.promotionType,
      this.flow,
      this.adword,
      this.startRemainTime,
      this.endRemainTime,
      this.sid,
      this.isFeedBackSlide,
      this.followCount,
      this.category1,
      this.category2,
      this.category3,
      this.stockStateId,
      this.remainNum,
      this.wareHouseNum,
      this.clickUrl,
      this.similarEnter,
      this.canAddCart,
      this.couponSortType,
      this.canNegFeedback,
      this.reqsig,
      this.abt,
      this.isDotScheme,
      this.presaleWare,
      this.venderId,
      this.sourceValue,
      this.sourceValueFeedback,
      this.sourceValueSimilar,
      this.source,
      this.exposureSourceValue,
      this.expid,
      this.feedBackStrategy,
      this.spu,
      this.jdShop,
      this.markImageUrl,
      this.markHeight,
      this.markWidth,
      this.recomTips,
      this.recomTipsIndex,
      this.trackRecomTips,
      this.expoUrl,
      this.icon2,
      this.isOpenApp,
      this.channelUnderSourceValue,
      this.channelUnderIcon,
      this.channelUnderName,
      this.channelUnderUrl,
      this.labelList,
      this.feedBackReason);

  //不同的类使用不同的mixin即可
  factory WareInfoListBean.fromJson(Map<String, dynamic> json) => _$WareInfoListBeanFromJson(json);

  Map<String, dynamic> toJson() => _$WareInfoListBeanToJson(this);
}

@JsonSerializable()
class LabelListBean {
  /**
   * resourceCode : tab_078
   * key : newProduct
   * labelTitle : 领券满1500减1000
   */

  String resourceCode;
  String key;
  String labelTitle;

  LabelListBean(this.resourceCode, this.key, this.labelTitle);

  //不同的类使用不同的mixin即可
  factory LabelListBean.fromJson(Map<String, dynamic> json) => _$LabelListBeanFromJson(json);

  Map<String, dynamic> toJson() => _$LabelListBeanToJson(this);
}

@JsonSerializable()
class FeedBackReasonBean {
  /**
   * id : 0
   * name : 不感兴趣
   */

  int id;
  String name;

  FeedBackReasonBean(this.id, this.name);

  //不同的类使用不同的mixin即可
  factory FeedBackReasonBean.fromJson(Map<String, dynamic> json) => _$FeedBackReasonBeanFromJson(json);

  Map<String, dynamic> toJson() => _$FeedBackReasonBeanToJson(this);
}
