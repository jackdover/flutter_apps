// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeGoods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeGoods _$HomeGoodsFromJson(Map<String, dynamic> json) {
  return HomeGoods(
    json['tabId'] as int,
    json['code'] as String,
    json['new900UIStrategy'] as String,
    json['waterFallStrategy'] as int,
    json['playCompleteState'] as String,
    json['isPreload'] as int,
    json['isEnableDarkMode'] as String,
    json['title'] as String,
    json['animationSwitchOfTabs'] as bool,
    json['waterFlow'] as String,
    json['callNewMixerStrategy'] as String,
    json['isOpenMemoryOpt'] as bool,
    json['bgColor'] as String,
    json['fbWizard'] == null
        ? null
        : FbWizardBean.fromJson(json['fbWizard'] as Map<String, dynamic>),
    json['newTabUI'] as bool,
    json['publicTest'] as String,
    json['publicTestBubble'] as String,
    json['feedBackImmediateEffect'] as String,
    json['darkModeBgColor'] as String,
    json['videoWareWifiPlay'] as String,
    json['tipsIndex'] as int,
    json['expid'] as String,
    (json['tabs'] as List)
        ?.map((e) =>
            e == null ? null : TabsBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['tabsColor'] as List)?.map((e) => e as String)?.toList(),
    (json['darkModeTabsColor'] as List)?.map((e) => e as String)?.toList(),
    (json['wareInfoList'] as List)
        ?.map((e) => e == null
            ? null
            : WareInfoListBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HomeGoodsToJson(HomeGoods instance) => <String, dynamic>{
      'tabId': instance.tabId,
      'code': instance.code,
      'new900UIStrategy': instance.new900UIStrategy,
      'waterFallStrategy': instance.waterFallStrategy,
      'playCompleteState': instance.playCompleteState,
      'isPreload': instance.isPreload,
      'isEnableDarkMode': instance.isEnableDarkMode,
      'title': instance.title,
      'animationSwitchOfTabs': instance.animationSwitchOfTabs,
      'waterFlow': instance.waterFlow,
      'callNewMixerStrategy': instance.callNewMixerStrategy,
      'isOpenMemoryOpt': instance.isOpenMemoryOpt,
      'bgColor': instance.bgColor,
      'fbWizard': instance.fbWizard,
      'newTabUI': instance.newTabUI,
      'publicTest': instance.publicTest,
      'publicTestBubble': instance.publicTestBubble,
      'feedBackImmediateEffect': instance.feedBackImmediateEffect,
      'darkModeBgColor': instance.darkModeBgColor,
      'videoWareWifiPlay': instance.videoWareWifiPlay,
      'tipsIndex': instance.tipsIndex,
      'expid': instance.expid,
      'tabs': instance.tabs,
      'tabsColor': instance.tabsColor,
      'darkModeTabsColor': instance.darkModeTabsColor,
      'wareInfoList': instance.wareInfoList,
    };

FbWizardBean _$FbWizardBeanFromJson(Map<String, dynamic> json) {
  return FbWizardBean(
    json['imgUrl'] as String,
    json['timestamp'] as int,
  );
}

Map<String, dynamic> _$FbWizardBeanToJson(FbWizardBean instance) =>
    <String, dynamic>{
      'imgUrl': instance.imgUrl,
      'timestamp': instance.timestamp,
    };

TabsBean _$TabsBeanFromJson(Map<String, dynamic> json) {
  return TabsBean(
    json['tabId'] as int,
    json['title'] as String,
    json['subtitle'] as String,
    json['broker_info'] as String,
  );
}

Map<String, dynamic> _$TabsBeanToJson(TabsBean instance) => <String, dynamic>{
      'tabId': instance.tabId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'broker_info': instance.broker_info,
    };

WareInfoListBean _$WareInfoListBeanFromJson(Map<String, dynamic> json) {
  return WareInfoListBean(
    json['itemType'] as int,
    json['rt'] as int,
    json['wareId'] as String,
    json['wname'] as String,
    json['markType'] as int,
    json['isMonetized'] as bool,
    json['imageurl'] as String,
    json['imageurlType'] as int,
    json['good'] as String,
    json['commentCount'] as String,
    json['jdPrice'] as String,
    json['isSamWare'] as bool,
    json['isPlusWare'] as bool,
    json['isPinGouWare'] as bool,
    json['isFansWare'] as bool,
    json['book'] as String,
    json['promotion'] as String,
    json['mp'] as int,
    json['feminine'] as bool,
    json['extension_id'] as String,
    json['couponInfo'] as String,
    json['interactive'] as String,
    json['seedPage'] as String,
    json['seedIndex'] as String,
    json['client_exposal_url'] as String,
    json['client_click_url'] as String,
    json['canClipTitleImg'] as bool,
    json['duration'] as int,
    json['exposureJsonSourceValue'] as String,
    json['recomReasonStyle'] as String,
    json['freeShippingFlag'] as String,
    json['liveSkuStatus'] as String,
    json['goodsType'] as int,
    json['promotionType'] as int,
    json['flow'] as String,
    json['adword'] as String,
    json['startRemainTime'] as int,
    json['endRemainTime'] as int,
    json['sid'] as String,
    json['isFeedBackSlide'] as int,
    json['followCount'] as String,
    json['category1'] as String,
    json['category2'] as String,
    json['category3'] as String,
    json['stockStateId'] as int,
    json['remainNum'] as int,
    json['wareHouseNum'] as String,
    json['clickUrl'] as String,
    json['similarEnter'] as String,
    json['canAddCart'] as String,
    json['couponSortType'] as int,
    json['canNegFeedback'] as String,
    json['reqsig'] as String,
    json['abt'] as String,
    json['isDotScheme'] as bool,
    json['presaleWare'] as int,
    json['venderId'] as String,
    json['sourceValue'] as String,
    json['sourceValueFeedback'] as String,
    json['sourceValueSimilar'] as String,
    json['source'] as String,
    json['exposureSourceValue'] as String,
    json['expid'] as String,
    json['feedBackStrategy'] as String,
    json['spu'] as String,
    json['jdShop'] as bool,
    json['markImageUrl'] as String,
    json['markHeight'] as int,
    json['markWidth'] as int,
    json['recomTips'] as String,
    json['recomTipsIndex'] as String,
    json['trackRecomTips'] as String,
    json['expoUrl'] as String,
    json['icon2'] as String,
    json['isOpenApp'] as String,
    json['channelUnderSourceValue'] as String,
    json['channelUnderIcon'] as String,
    json['channelUnderName'] as String,
    json['channelUnderUrl'] as String,
    (json['labelList'] as List)
        ?.map((e) => e == null
            ? null
            : LabelListBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['feedBackReason'] as List)
        ?.map((e) => e == null
            ? null
            : FeedBackReasonBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WareInfoListBeanToJson(WareInfoListBean instance) =>
    <String, dynamic>{
      'itemType': instance.itemType,
      'rt': instance.rt,
      'wareId': instance.wareId,
      'wname': instance.wname,
      'markType': instance.markType,
      'isMonetized': instance.isMonetized,
      'imageurl': instance.imageurl,
      'imageurlType': instance.imageurlType,
      'good': instance.good,
      'commentCount': instance.commentCount,
      'jdPrice': instance.jdPrice,
      'isSamWare': instance.isSamWare,
      'isPlusWare': instance.isPlusWare,
      'isPinGouWare': instance.isPinGouWare,
      'isFansWare': instance.isFansWare,
      'book': instance.book,
      'promotion': instance.promotion,
      'mp': instance.mp,
      'feminine': instance.feminine,
      'extension_id': instance.extension_id,
      'couponInfo': instance.couponInfo,
      'interactive': instance.interactive,
      'seedPage': instance.seedPage,
      'seedIndex': instance.seedIndex,
      'client_exposal_url': instance.client_exposal_url,
      'client_click_url': instance.client_click_url,
      'canClipTitleImg': instance.canClipTitleImg,
      'duration': instance.duration,
      'exposureJsonSourceValue': instance.exposureJsonSourceValue,
      'recomReasonStyle': instance.recomReasonStyle,
      'freeShippingFlag': instance.freeShippingFlag,
      'liveSkuStatus': instance.liveSkuStatus,
      'goodsType': instance.goodsType,
      'promotionType': instance.promotionType,
      'flow': instance.flow,
      'adword': instance.adword,
      'startRemainTime': instance.startRemainTime,
      'endRemainTime': instance.endRemainTime,
      'sid': instance.sid,
      'isFeedBackSlide': instance.isFeedBackSlide,
      'followCount': instance.followCount,
      'category1': instance.category1,
      'category2': instance.category2,
      'category3': instance.category3,
      'stockStateId': instance.stockStateId,
      'remainNum': instance.remainNum,
      'wareHouseNum': instance.wareHouseNum,
      'clickUrl': instance.clickUrl,
      'similarEnter': instance.similarEnter,
      'canAddCart': instance.canAddCart,
      'couponSortType': instance.couponSortType,
      'canNegFeedback': instance.canNegFeedback,
      'reqsig': instance.reqsig,
      'abt': instance.abt,
      'isDotScheme': instance.isDotScheme,
      'presaleWare': instance.presaleWare,
      'venderId': instance.venderId,
      'sourceValue': instance.sourceValue,
      'sourceValueFeedback': instance.sourceValueFeedback,
      'sourceValueSimilar': instance.sourceValueSimilar,
      'source': instance.source,
      'exposureSourceValue': instance.exposureSourceValue,
      'expid': instance.expid,
      'feedBackStrategy': instance.feedBackStrategy,
      'spu': instance.spu,
      'jdShop': instance.jdShop,
      'markImageUrl': instance.markImageUrl,
      'markHeight': instance.markHeight,
      'markWidth': instance.markWidth,
      'recomTips': instance.recomTips,
      'recomTipsIndex': instance.recomTipsIndex,
      'trackRecomTips': instance.trackRecomTips,
      'expoUrl': instance.expoUrl,
      'icon2': instance.icon2,
      'isOpenApp': instance.isOpenApp,
      'channelUnderSourceValue': instance.channelUnderSourceValue,
      'channelUnderIcon': instance.channelUnderIcon,
      'channelUnderName': instance.channelUnderName,
      'channelUnderUrl': instance.channelUnderUrl,
      'labelList': instance.labelList,
      'feedBackReason': instance.feedBackReason,
    };

LabelListBean _$LabelListBeanFromJson(Map<String, dynamic> json) {
  return LabelListBean(
    json['resourceCode'] as String,
    json['key'] as String,
    json['labelTitle'] as String,
  );
}

Map<String, dynamic> _$LabelListBeanToJson(LabelListBean instance) =>
    <String, dynamic>{
      'resourceCode': instance.resourceCode,
      'key': instance.key,
      'labelTitle': instance.labelTitle,
    };

FeedBackReasonBean _$FeedBackReasonBeanFromJson(Map<String, dynamic> json) {
  return FeedBackReasonBean(
    json['id'] as int,
    json['name'] as String,
  );
}

Map<String, dynamic> _$FeedBackReasonBeanToJson(FeedBackReasonBean instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
