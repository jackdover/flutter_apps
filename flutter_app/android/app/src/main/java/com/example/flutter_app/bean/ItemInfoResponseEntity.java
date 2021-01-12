package com.example.flutter_app.bean;

import java.util.List;

class ItemInfoResponseEntity {

    private int code;
    private List<FloorsBean> floors;

    public static class FloorsBean {
        /**
         * bId : eCustom_flo_299
         * cf : {"bgc":"#ffffff","spl":"empty"}
         * data : {"threeDSwitch":false,"videoControl":{"optimize":true,"class":"com.jd.app.server.warecoresoa.domain.video.VideoControl","autoPlay":false,"masterVideo":{"playUrl":"https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/v.f30.mp4?dockingId=12943a9e-481b-4cf7-a062-cfac52a7a2c1&storageSource=3","duration":60,"imageUrl":"https://img.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/imageSampleSnapshot/1574669045_12981449.100_6008.jpg","videoShare":{"class":"com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideoShare","microBlog":"我发现了一个精彩的视频，快来看看吧https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255","title":"这个小视频不错哦~","des":"我发现了一个精彩的视频，快来看看吧","url":"https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255"},"videoId":"129653998","class":"com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideo","videoDuration":"01'00\""}},"isShowAR":false,"bgc":"#ffffff","priceIcon":{"kanJia":"https://m.360buyimg.com/cc/jfs/t18559/311/1506989738/3700/cea16f48/5acdf410N0435a64a.png","jiangJia":"https://m.360buyimg.com/cc/jfs/t17767/313/1571185437/16553/ad5bc0be/5acdf3deN0078de63.png"},"priceInfo":{"saveMoney":"省330元","originPrice":"4799.00","jprice":"4469.00"},"showAttentionPriceFloor":true,"showAttention":true,"ad":{"adword":"【直降500元！现货当天发】12期免息，华为官方直供！\n【赠】华为原装无线充+彩屏运动手环+双耳真无线蓝牙耳机+钢化膜等【Mate30pro5G】","textColor":"#8C8C8C","color":"#f23030","newALContent":true,"hasFold":true,"class":"com.jd.app.server.warecoresoa.domain.AdWordInfo.AdWordInfo","adLinkContent":"查看>","adLink":"https://item.jd.com/59725365523.html"},"CccKernel":[{"icon":"https://m.360buyimg.com/cc/jfs/t18391/185/1623415222/894/e4f01bb5/5ad09367N6054a929.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"2019年11月","paramName":"上市时间"},{"icon":"https://m.360buyimg.com/cc/jfs/t19759/243/1630561111/625/4c73d190/5ad09218Nb257967a.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"4200mAh","paramName":"电池容量"},{"icon":"https://m.360buyimg.com/cc/jfs/t17074/228/1590408415/1051/be82b5bd/5ad092d5N82f62244.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"8.4mm","paramName":"机身厚度"},{"icon":"https://m.360buyimg.com/cc/jfs/t18007/38/1592657759/998/2c3d6166/5ad09390Nd09d1d15.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"双卡双待","paramName":"双卡机类型"}],"specBuryPoint":"上市时间_电池容量_机身厚度_双卡机类型","title":"规格","selectInfo":{"inTitle":"放心购服务","gdImage":"https://m.360buyimg.com/cc/jfs/t1/99381/10/14559/23398/5e663a40E04a3595d/28127312190b5f68.png","imgUrl":"https://m.360buyimg.com/cc/jfs/t1/39921/1/2586/7056/5cc17384E3360544f/ff4ec59f07836b1e.png","dgImage":"https://m.360buyimg.com/cc/jfs/t1/41681/22/12662/8785/5d5e5e21Ee8bdca91/d8c40eb6318f7f09.png"},"trustworthy":{"iconInDialog":"https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png","iconUrl":"https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png","iconListOne":[{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}],"class":"com.jd.app.server.warecoresoa.domain.icon.TrustworthyInfo","guideJumpUrl":"https://web.shop.jd.com/PurchaseAtEase/index.html","type":"p","iconList":[{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}],"guideText":"了解详情","separator":"·"},"preferentialGuide":{"iconCode":"detail_var_045","promotion":{"plusMark":"tab_var_124","gift":[{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57601351429","value":"华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"46447880993","value":"华为（HUAWEI）原装无线充电器 快充版 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"42223536637","value":"真无线蓝牙耳机 （以实物为准） 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"37431101133","value":"通用适配半屏钢化膜/软膜（因手机不同，图片仅供参考） 精美钢化膜（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57602649444","value":"彩屏版运动手环M4（颜色随机 以实物为准） 黑色（条件：购买1件及以上，赠完即止）"},{"text":"赠品","num":"1","link":"https://aco.m.jd.com?channel=phonepage","skuId":"","value":"体验卡免费领，多款APP免流，超大流量任性用，点击领取"}],"isTwoLine":true,"tip":"以下促销，可在购物车任选其一","activityTypes":["3","10","15"],"screenLiPurMap":{},"canReturnHaggleInfo":false,"activity":[{"value":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次","text":"限购","skuId":"","proSortNum":8,"link":"","proId":"73282401872","promoId":""},{"value":"满4509元减10元","text":"满减","skuId":"","proSortNum":4,"link":"","proId":"33890832767","promoId":"33890832767"}],"plusDiscountMap":{},"class":"com.jd.app.server.warecoresoa.domain.promotion.PromotionInfo","isBargain":false,"limitBuyInfo":{"limitNum":"0","noSaleFlag":"0","promotionText":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次"},"attach":[],"prompt":"1;2","tips":[],"normalMark":"tab_var_071"},"whiteBarInfo":{"marketingText":"领立减80元优惠券，12期内免息","planInfos":[{"rate":"0.00","plan":12,"isMaxdiscount":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo","secondTitle":"无服务费","laterPay":"372.38","mainTitle":"¥372.38 x 12期","planFee":"0.00"}],"ava":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WhiteBarInfo","login":true,"url":"https://bt.jd.com/v3/mobile/rGuide_initGuideMobile?source=JD_zw&channelName=SXY&secondCode=&recommend=","btUser":false},"couponInfo":[],"hasFinanceCoupon":false},"actions":{"bizActs":[{"icon":"https://m.360buyimg.com/cc/jfs/t1/17024/4/15356/2143/5caeb5efEf90f64a9/f4205d7302e4433c.png","jumpType":1,"truthBigSale":false,"desc":"旧品回收，免费估价，极速到账","mustLogin":false,"bizKey":"yjhx","class":"com.jd.app.server.warecoresoa.domain.activity.Activity","url":"https://huishou.m.jd.com/index?s=1&skuId=59788201255&cid1=9987&cid2=653&cid3=655&province=1&city=72&county=2839&source=3&activityType=1&commodityType=1&town=0&latitude=39.98642&longitude=116.47881"},{"icon":"https://m.360buyimg.com/cc/jfs/t1/108748/26/3663/3756/5e1315b3Eac1294ee/5c2161b496c4db39.png","jumpType":1,"truthBigSale":false,"desc":"首次开通领红包，专属权益全家享","mustLogin":false,"bizKey":"family","class":"com.jd.app.server.warecoresoa.domain.activity.Activity","url":"https://myfamily.jd.com/?jdreactkey=JDReactMyFamily&jdreactapp=JDReactMyFamily&rn_transparentenable=true&rn_page=inviterPage&ishidden=true&rn_source=shangxiang"}]},"selected":"","defaultAddr":{"provinceId":"1","countyName":"四环到五环之间","cityId":"72","townName":"","cityName":"朝阳区","class":"com.jd.app.server.warecoresoa.domain.vo.AddressInfo","townId":"0","provinceName":"北京","countyId":"2839"},"stock":"现货","fare":"免运费","serviceInfo":{"class":"com.jd.app.server.warecoresoa.domain.icon.ServiceInfo","basic":{"iconList":[{"jichu":false,"text":"不可使用京券东券","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png","sortId":13,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品不可使用京券、东券","iconType":"exclamation"},{"jichu":false,"text":"7天无理由退货（激活后不支持）","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1918/274/1086575987/1970/bc766f2d/5680f4b3N24b48659.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持7天无理由退货(激活后不支持)","iconType":"right"},{"jichu":false,"text":"货到付款","imageUrl":"https://img30.360buyimg.com/mobilecms/g13/M06/10/11/rBEhUlLL13kIAAAAAAAEeT_oUHcAAHskQP_-boAAASR577.jpg","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持送货上门后再收款，支持现金、POS机刷卡等方式","iconType":"right"},{"jichu":false,"text":"店铺发货&售后","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2176/234/1856411458/2044/91ae040b/5680f585N70da96a6.png","sortId":6,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"由掌视界数码旗舰店发货并提供售后服务","iconType":"right"}],"class":"com.jd.app.server.warecoresoa.domain.icon.BasicServiceInfo","title":"基础服务"}},"servIconRelation":[{"iconValue":"detail_006","class":"com.jd.app.server.warecoresoa.domain.icon.ServIconRelation","iconType":"exclamation"},{"iconValue":"detail_005","class":"com.jd.app.server.warecoresoa.domain.icon.ServIconRelation","iconType":"right"}],"isIcon":true,"unitedRank":{"id":"231144950","icon":"icon","jumpType":"OPENAPP","desc":"入选『夜拍出色的高清屏手机精选』","titleImage":"titleImage","arrowImage":"arrowImage","rankType":5,"bgImage":"bgImage","url":"openapp.jdmobile://virtual?params={\"modulename\":\"JDReactRankingList\",\"des\":\"jdreactcommon\",\"category\":\"jump\",\"param\":{\"detailPageType\":\"2\",\"innerIndex\":2,\"contentId\":\"231144950\",\"fromSkuId\":\"59788201255\"},\"appname\":\"JDReactRankingList\",\"ishidden\":true,\"fromName\":\"Productdetail\",\"transparentenable\":true}"},"eventId":"Productdetail","bizList":[{"icon":"https://m.360buyimg.com/cc/jfs/t8746/206/1817663053/1477/344350f9/59bfa60fNd6d66c7c.png","title":"手机靓号 ","desc":"全国流量不限量","mustLogin":false,"bizKey":"redCard","type":1,"url":"https://pro.m.jd.com/mall/active/37KLd8my2W19ekZLTHsz5WvEx7uu/index.html"},{"icon":"https://m.360buyimg.com/mobilecms/jfs/t1156/166/1499324257/1982/49bdbf10/572c6869N578efca5.png","title":"保障服务","desc":"为商品保驾护航","mustLogin":false,"jumpData":{"bizType":2},"bizKey":"ensure","type":3,"url":"2"}],"slide":{"slideColor":"#e3e5e9","slideSelect":"#F0250F"},"text3":"","jumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=-99999","tailIconH":20,"text1":"热门配件","text2":"查看全部","imgInfo":[{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/35794/7/2043/7048/5cb9ce74Eabf015ac/37b91e86245190d6.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=10","imgJumpType":1,"imgText":"移动电源"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/30424/11/15586/30467/5cc27df0Eca5f38f6/e6612eb7fb630db5.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=13","imgJumpType":1,"imgText":"数据线"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/40612/18/452/17692/5cc265b6Ed82d1bf5/24bbf9d972a05e1c.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=16","imgJumpType":1,"imgText":"蓝牙耳机"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/43418/24/463/51435/5cc2674cE80cc404a/2a929c7ff34954a8.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=286","imgJumpType":1,"imgText":"手机耳机"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/41793/24/486/17962/5cc26b5dEfb0c7cd1/30bf2d76b1a35b68.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=12","imgJumpType":1,"imgText":"充电器"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/50346/27/14570/25103/5db947b1E23dcda5e/2a25f40f7011b6c7.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=292","imgJumpType":1,"imgText":"拍照配件"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/79129/24/14200/31350/5db94896E90a92bf6/fbdecb9b982071e0.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=254","imgJumpType":1,"imgText":"手机支架"}],"text2C":"#2E2D2D","text1C":"#2E2D2D","viewMore":true,"text1B":true,"text3C":"#000000","text3Bgc":"#F9F9F9","tailIcon":"https://m.360buyimg.com/cc/jfs/t20419/242/1733633141/407/d3fcd52b/5b31f170Neb3e95e0.png","jumpType":1,"text1S":26,"buried":"Productdetail","text2S":24,"text3S":24,"recommend":"","priceLabel":"¥","tabUrl":"https://in.m.jd.com/product/detail/59788201255.html","attentionInfo":{"txt1":"关注","txt2":"已关注"},"rankName":"入选『夜拍出色的高清屏手机精选』","isOpenH5":true,"yuyueInfo":{"plusType":0,"isbuyTime":false,"isYuYue":false,"yuYue":false,"yuyueNum":0,"mad":false,"class":"com.jd.app.server.warecoresoa.domain.appoint.WareAppointInfo"},"rankType":5,"buttonInfo":{"second":{"bgColor":"#F10000,#FF2000,#FF4F18;#D80000,#E51C00,#E54615;#bfbfbf,#bfbfbf,#bfbfbf","class":"com.jd.app.server.warecoresoa.domain.cart.Button","textColor":"#ffffffff","type":0,"source":0,"name":"加入购物车"},"class":"com.jd.app.server.warecoresoa.domain.cart.ButtonInfo","main":{"bgColor":"#FFA600,#FFB000,#FFBC00;#E59500,#E59B00,#E6A800;#bfbfbf,#bfbfbf,#bfbfbf","class":"com.jd.app.server.warecoresoa.domain.cart.Button","textColor":"#ffffffff","type":1,"source":0,"name":"立即购买"}},"promotionPoint":{"class":"com.jd.app.server.warecoresoa.domain.promotion.ProBuryingPoint","promotionSkinPoint":"0","promotionTagPoint":"0"},"miaoshaInfo":{"icon":"detail_026","state":2,"seckillType":"1","class":"com.jd.app.server.warecoresoa.domain.seckill.SecKillShowInfo","miaosha":true,"miaoshaRemainTime":"43518","title":"京东秒杀"},"pointInfo":{"isShowAr":false,"trustworthy":"1"},"isOpenCar":true,"recommendToast":{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendInfo","recommends":[{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t22450/43/1465607416/12172/beeff364/5b5ffa4cNf3ea7b03.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=10"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/61739/27/4121/1607/5d242719E90014906/6d75f8d3ea82f739.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=13"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/70227/9/4061/3654/5d2426c1E6d4ae927/8b8c24a49c60ff0c.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=16"}],"toastExplain":"为您推荐品质配件","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId="},"isOpenNode":true,"isDesCbc":true,"yanBaoInfo":{"yanBaoDetailUrl":"https://static.360buyimg.com/finance/mobile/insurance/warrantyServiceDesc/html/warrantyExtension.html?mainSkuId=59788201255&brandId=8557&thirdCategoryId=655&bindSkuId=","yanBaoList":[{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"299.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修3年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224921668},{"price":"189.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修2年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224073273,"discount":"品质购 直降"},{"price":"216.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"首年全保换新","tip":"性能/意外故障一折换JD新机","platformPid":64019721974,"discount":"换新运费全免"}],"sortName":"全面保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t4543/105/4229305177/1459/b754e0ca/590c0c7dNfb7ce9fe.png"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"199.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"原厂碎屏保","tip":"1年意外导致屏幕、后盖碎免费更换","platformPid":55636841897,"discount":"华为官方"},{"price":"169.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保2年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":55150688951},{"price":"129.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保1年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":42227138196}],"sortName":"屏幕保护","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t30094/131/703993755/763/1abbf077/5bfb8aa3N033cd955.jpg"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"39.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"电池保2年","tip":"容量续航问题免费换原厂电池","platformPid":55031321777},{"price":"339.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"京享无忧2年","tip":"原厂物料2年全保修+回收换新补贴","platformPid":59700151209,"discount":"赠服务等价补贴"},{"price":"229.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"免费换1年","tip":"三包故障，享JD免费换机一次","platformPid":55039501435}],"sortName":"官修保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t1/79067/18/9323/1913/5d6e299aE5dae5e92/ea7516d00ede9296.png"}],"yanBaoTitle":"保障服务","yanBaoUrl":"https://baozhang.jd.com/static/serviceDesc"},"wareImage":[{"share":"https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.jpg","big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/47469/27/14148/137157/5dafac76Eaab9f044/8ba4978c5289cf47.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/47469/27/14148/137157/5dafac76Eaab9f044/8ba4978c5289cf47.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/83575/19/11659/114158/5dafac76Eb3df03fe/c6c0a4e3ca0b20f7.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/83575/19/11659/114158/5dafac76Eb3df03fe/c6c0a4e3ca0b20f7.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/75600/18/13641/39019/5dafac76Eb8229987/7428741cf0a21441.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/75600/18/13641/39019/5dafac76Eb8229987/7428741cf0a21441.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/50209/7/14038/81911/5dafac76Ebde48868/0df55a6769e5fbf7.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/50209/7/14038/81911/5dafac76Ebde48868/0df55a6769e5fbf7.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/59066/6/13868/28718/5dafac76E35ffbc07/bf58e647aaf3f4b8.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/59066/6/13868/28718/5dafac76E35ffbc07/bf58e647aaf3f4b8.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/96809/18/523/83326/5dafac77E7cbb0f21/218243306e9e6542.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/96809/18/523/83326/5dafac77E7cbb0f21/218243306e9e6542.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100932/5/562/21213/5dafac77E646d4620/77f196d46af6c282.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100932/5/562/21213/5dafac77E646d4620/77f196d46af6c282.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100655/1/560/32736/5dafac77Ea480d26e/ba4fb479179a8e07.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100655/1/560/32736/5dafac77Ea480d26e/ba4fb479179a8e07.jpg!q70.dpg.webp"}],"jdSerPlusInfo":{"jdSerPlusList":[{"scIconUrl":"https://img30.360buyimg.com/test/jfs/t17776/210/2003594126/2589/af1c7233/5ae2a05aN07067189.png","scId":468,"class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusItem","scName":"特色服务","products":[{"itemIndex":1,"serviceSkuShortName":"数据恢复","serviceSkuAdWord":"恢复数据 恢复感情","class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusProduct","serviceSku":"7093704","serviceSkuPrice":"39.00"}],"scOrder":2}],"jdSerPlusUrl":"https://m-weixiu.jd.com/spbuy/getServicePlusInfo?pid=100009177424,1,72,2839,0,","jdSerPlusTitle":"京东服务+"},"defineSkinChange":{"imageUrl":"https://m.360buyimg.com/cc/jfs/t1/89891/17/179/48419/5da87c96E86f1aad7/8404be9847e92c46.png","infoBoxTextColor":"#FFFFFF","cdTextColor":"#FE1743","infoBoxColor":"#DA0029","cdBackColor":"#FFF5EA","infoBoxPell":"0.9","cdNumColor":"#FFFFFF","cdNumBoxColor":"#FE1743"},"shareImgInfo":{"shareLanguage":"推荐一个好物给你，请查收","promotionStr":"【满减】满4509元减10元","priceDes":"价格具有时效性","markingOff":true,"priceUrl":"https://m.360buyimg.com/cc/jfs/t1/16989/25/11991/6282/5c933b48Eb4fd488e/03e6606b4decb734.png","jprice":"4469.00","secondPrice":"4799.00"},"wareInfo":{"skuId":"59788201255","venderId":"653506","name":"华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)"},"property":{"easyBuy":true,"isShowShopNameB":false,"isFlimPrint":"","isPop":true,"isRx":false,"isOP":false,"isEncrypt":true,"treatyIntroUrl":"https://pro.m.jd.com/mall/active/Zwdz5grwF8fTpiha3XVNGHu2kaU/index.html","isShowBarrage":true,"isCollect":false,"addAndSubToast":{"lowestToastText":"最少购买1件哦！"},"virtualCardUrl":"https://gamerecg.m.jd.com?skuId=59788201255&chargeType=655&skuName=华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)&skuPrice=4469.00","isFxyl":false,"isJx":false,"buyMaxNum":200,"showEmptyPrice":false,"chatUrl":"https://m.360buyimg.com/n3/jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg.webp","evaluateTabEnable":true,"wareImageTest":"","noStockOrder":false,"opForIos":true,"suitABTest":0,"androidImageSwitch":true,"isJzfp":false,"isRegularPrice":true,"treatyIntroText":"合约机购买说明","category":"9987;653;655","stockNotice":false,"isRegisterUser":false,"shareUrl":"https://item.m.jd.com/product/59788201255.html?wxa_abtest=o","recTabEnable":true,"cartFlag":true,"isEasyBuyPrice":true,"isOTC":"0"},"supportSale":true,"isOpen":true,"appointAndPresaleOpen":true,"abTestInfo":{"noBotmShop":false,"easyDelAB":true,"rankYhTag":true,"newuserFreeAb":false,"toABTest":true,"specialSelectAB":true,"shareM":"a","skuSource":1,"shopExtendsAb":true,"showBuyLayer":true,"evaluateAB":false,"newUser":false,"shopABTest":"a","recommendYhTag":true,"hospitalAB":"A","class":"com.jd.app.server.warecoresoa.domain.abTest.ABTestInfo","shopPromotionAB":"B","recommendPopup":false,"feedBackAB":true,"collectABInfo":{"titleABTest":true,"class":"com.jd.app.server.warecoresoa.domain.abTest.CollectABInfo","bottom3ABTest":true,"bottom4ABTest":true},"shareShield":false,"packABTest":1,"shopCardTypeAb":true,"attentionAB":"A","shopIntensifyAB":false},"eventParam":{"sep":"{\"area\":\"1_72_2839_0\",\"sku\":[[\"59788201255\",\"4469.00\",\"现货\",\"33\",\"0\"]]}"},"abTest800":true,"colorSizeInfo":{"colorSize":[{"title":"颜色","buttons":[{"text":"亮黑","no":"1","skuList":["59724611000","59788201252","62197897734","62197897735"]},{"text":"罗兰紫","no":"3","skuList":["59788201253","59788201254","62197897736","62197897737"]},{"text":"翡冷翠","no":"5","skuList":["59788201255","59788201256","62197897738","62197897739"]},{"text":"星河银","no":"7","skuList":["59788201257","59788201258","62197897740","62197897741"]},{"text":"丹霞橙","no":"9","skuList":["59788201259","59788201260","62197897742","62197897743"]},{"text":"青山黛","no":"11","skuList":["59788201261","59788201262","62197897744","62197897745"]}]},{"title":"版本","buttons":[{"text":"全网通(8G+128G)(5G版)","no":"1","skuList":["59724611000","59788201253","59788201255","59788201257","59788201259","59788201261"]},{"text":"全网通(8G+256G)(5G版)","no":"3","skuList":["59788201252","59788201254","59788201256","59788201258","59788201260","59788201262"]},{"text":"全网通(6G+128G)(4G版)","no":"6","skuList":["62197897734","62197897736","62197897738","62197897740","62197897742","62197897744"]},{"text":"全网通(8G+128G)(4G版)","no":"7","skuList":["62197897735","62197897737","62197897739","62197897741","62197897743","62197897745"]}]}],"colorSizeTips":"#与其他已选项无法组成可售商品，请重选"},"shopInfo":{"customerService":{"hotLineInfo":{"hotLinePhoneExtend":"400-610-1360转342876","hotLineContent":"请选择客服联系方式","hotLineService":"在线客服","class":"com.jd.app.server.warecoresoa.domain.shop.HotlineInfo","hotLinePhone":"400-610-1360"},"hasChat":true,"hasJimi":false,"allGoodJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"allProduct\"}","chatInfo":{"shopText":"联系客服","allGoodText":"精选商品","class":"com.jd.app.server.warecoresoa.domain.chat.ChatInfo","bottomText":"联系客服","allGoodIcon":"detail_030","bottomIcon":"detail_044","shopIcon":"detail_044","isBubble":false},"mLink":"https://m.jd.com/product/59788201255.html","inShopLookJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"home\"}","online":true},"shop":{"shopActivityTotalNum":35,"skuText":"商品","promotions":[{"name":"限时秒杀","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"secKillPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"限时闪购","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"gwredPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满159减10元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890789178\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满249减20元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890814117\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"}],"score":0,"efficiencyScore":0,"followCount":330051,"afterSaleGrade":"低","afterSaleTxt":"售后","avgEfficiencyScore":0,"shopId":649114,"promotionNum":0,"shopStarTxt":"店铺星级","squareLogo":"https://img10.360buyimg.com/cms/jfs/t1/98747/10/3459/75757/5de0c3d4Ec2948722/9a79ef65b4b72197.jpg","shopStateText":"店铺动态","cateGoodShop":0,"followText":"关注人数","class":"com.jd.app.server.warecoresoa.domain.shop.SkuShopInfo","serverText":"服务","cardType":3,"afterSaleScore":"8.87","scoreRankRateGrade":"4.0","hasCoupon":false,"avgServiceScore":0,"giftIcon":"","globalGoodShop":0,"goodShop":0,"hotcatestr":"主营各大品牌智能手机！","signboardUrl":"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg","logisticsScore":"8.57","hotcates":[{"commendSkuId":59724611000,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":10593729,"cname":"爆款专区"},{"commendSkuId":47784189130,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/57880/24/3495/100223/5d135516Ed1016603/4ae6c05d45b38bcb.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116548,"cname":"华为手机"},{"commendSkuId":56177164557,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/67458/29/9214/89945/5d70639cE57eba3f3/0cd0ef95b6e5eb0b.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116549,"cname":"荣耀手机"},{"commendSkuId":60778985698,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/81941/29/14709/978996/5dc29505E2d10d773/547e9a8bf49f1f63.png","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":13316550,"cname":"mate30系列"}],"logisticsTxt":"物流","evaluateTxt":"评价","isSquareLogo":true,"diamond":false,"name":"掌视界数码旗舰店","evaluateScore":"8.69","serviceScore":0,"logo":"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg","logisticsText":"物流","avgWareScore":0,"evaluateGrade":"低","nameB":"掌视界数码旗舰店","totalNum":147,"newNum":0,"logisticsGrade":"低","venderType":"0","shopImage":"https://img12.360buyimg.com/cms/jfs/t1/63385/39/13393/195054/5da80b54E8829a64c/b9ac4f77993f1bd6.jpg","skuCntText":"全部商品","scoreText":"综合评分","telephone":"400-610-1360转342876","wareScore":0,"brief":"主营各大品牌智能手机！"}},"suit":{"mainSkuPicUrl":"jfs/t1/86172/23/15312/132452/5e6e1185E709e5398/0f1eff851a27b570.jpg!q70.jpg.webp","suitMark":"tab_var_071","mainSkuId":100009177424,"itemList":[{"originalSuitType":0,"packListPrice":"¥5078.80","packId":50057800807,"productList":[{"skuPicUrl":"jfs/t1/103960/30/8248/518904/5e04486fE7283b55d/8a84abd2f298938e.jpg!q70.jpg.webp","name":"mate30/5G通用【蓝光】","skuId":100008355264,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30钢化膜mate30 5G版手机全屏覆盖保护膜huawei曲面热弯玻璃抗蓝光全包无白边抗指纹贴膜por"},{"skuPicUrl":"jfs/t1/104547/36/9304/383360/5e0d5787E1877fa82/372ba171b505bb2a.jpg!q70.jpg.webp","name":"Mate30【裸机手感】魔力黑","skuId":100008712968,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30手机壳mate30 5g版手机防摔全包边保护套hauwei超薄磨砂防指纹个性创意简约潮牌女男款硬壳"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5069.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5049.90","packId":50057801370,"productList":[{"skuPicUrl":"jfs/t1/78089/30/11037/1187793/5d85fd64E91cc65c1/e48dd32c1645dc01.png!q70.jpg.webp","name":"超薄-硅胶防摔软壳-透明 Mate 30/Mate 30 5G通用","skuId":100004422029,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"莜茉YOMO 华为Mate30手机壳 mate30保护套5G手机通用 超薄硅胶全包外壳/TPU抗指纹透明防摔软壳 清透白"},{"skuPicUrl":"jfs/t1/94128/36/6972/747063/5df832bdE5645575c/c895faad4e61521d.jpg!q70.jpg.webp","name":"【Mate30/30 5G】全屏无白边膜","skuId":100007652542,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"莜茉YOMO 华为Mate30钢化膜 mate30手机膜5G手机通用 全屏覆盖无白边淡化指纹高清防爆玻璃膜-黑【2片装】"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5036.50","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5087.00","packId":50057801561,"productList":[{"skuPicUrl":"jfs/t1/96600/15/8350/251519/5e046f8fE6f31980c/30fd4d058f6a577c.jpg!q70.jpg.webp","name":"【全屏高清水晶膜】Mate30","skuId":100008619614,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"邦克仕(Benks)华为Mate30 5G钢化膜 Mate30全屏覆盖手机贴膜 高清耐刮防爆防摔防指纹手机膜 高清膜"},{"skuPicUrl":"jfs/t1/46814/33/14674/125496/5dba734dEdfeded06/8058e9b342fa9d7c.jpg!q70.jpg.webp","name":"Mate30/5G【黑色】硅胶壳","skuId":100008796302,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"邦克仕(Benks)华为Mate30 5G手机壳 HUAWEI Mate 30手机保护套 超薄液态硅胶耐磨防摔软壳 黑色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5066.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5079.00","packId":50057801566,"productList":[{"skuPicUrl":"jfs/t1/108474/15/2874/646076/5e0b1018E7aefc0e9/5b3517a64608ef57.jpg!q70.jpg.webp","name":"新一代工艺 mate30/5G通用【全屏】","skuId":100007469650,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"【钻石膜】瓦力 华为mate30钢化膜 华为Mate30 5G全屏覆盖钢化膜高清手机保护膜 黑色"},{"skuPicUrl":"jfs/t1/100887/36/2137/328869/5dcbdfdaE28ab49fb/d5e9628b45526063.jpg!q70.jpg.webp","name":"纤薄如初&还原裸机 Mate30","skuId":100007652938,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"瓦力（VALEA）华为mate30手机壳5g/4g版通用保护套 mate30轻薄手机套磨砂防摔软壳  黑色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5060.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5122.90","packId":50057802118,"productList":[{"skuPicUrl":"jfs/t1/43827/36/15928/524224/5d89cc17E11b81ea9/898c1be30ec093a4.jpg!q70.jpg.webp","name":"黑色","skuId":100008619582,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"华为 HUAWEI Mate 30 硅胶保护壳 黑色"},{"skuPicUrl":"jfs/t1/46960/15/14819/243442/5dbe82b0Ed0cd9dad/d2f1310ce5bcff69.jpg!q70.jpg.webp","name":"【Mate30/30 5G通用】全屏","skuId":100007816820,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"中陌（zigmog）华为Mate30钢化膜 Mate30 高清手机贴膜 曲面全屏覆盖玻璃 防爆防指纹保护膜 自动贴附"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5082.90","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5038.90","packId":50057803047,"productList":[{"skuPicUrl":"jfs/t1/46538/34/2726/698474/5d08edc7E6a257e94/2990ee0f56067c5c.jpg!q70.jpg.webp","name":"22.5W快充头+5A数据线[快充套装] 白色","skuId":100005745512,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"乔威 华为22.5W充电器头 5A超级快充+5AType-c数据线充电套装  用于安卓/华为/荣耀/小米 白色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5033.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5083.90","packId":50057803116,"productList":[{"skuPicUrl":"jfs/t1/52197/38/16357/150774/5dd625e2E4b7ae2ba/82d08e3c2fcf2a37.jpg!q70.jpg.webp","name":"华为SuperCharge【5A闪充线】1米","skuId":6468018,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"绿联 Type-C数据线5A超级快充 通用华为Mate30/20/P30pro/nova5/荣耀/小米8/9手机充电线安卓USB-C转接头1米"},{"skuPicUrl":"jfs/t1/106634/14/1649/526717/5dc29280Eb0ac1c04/be2ec2fc3b0edce6.jpg!q70.jpg.webp","name":"华为超级快充22.5W充电头","skuId":100006961440,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"绿联 5A超级快充 22.5W充电器通用华为Mate30/20/P20/P30Pro荣耀10/V20手机4.5V/5A闪充插头 兼容QC/FCP50548"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5071.70","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5118.00","packId":50057803503,"productList":[{"skuPicUrl":"jfs/t1/64032/7/16706/273344/5de1010fEf37a730f/c73085e04b62950c.jpg!q70.jpg.webp","name":"【22.5w双向快充】2万毫安","skuId":100009743866,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"罗马仕 ROMOSS PSW20PF 华为充电宝移动电源20000毫安时22.5W大容量PD双向快充适用于苹果小米安卓"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5094.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5028.00","packId":50057804452,"productList":[{"skuPicUrl":"jfs/t1/98062/39/14371/291698/5e65c488Ea488f52b/31e8c948c5299f21.jpg!q70.jpg.webp","name":"5A支持华为快充-白-1米","skuId":100006610876,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"飞利浦 Type-C数据线 5A超级快充手机充电线 安卓USB-C转接头充电器支持小米8/9/华为P30/Mate10/20 1米1612A"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5020.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5098.00","packId":50057804494,"productList":[{"skuPicUrl":"jfs/t1/45177/15/13230/349040/5da177fcEa89d1ce7/c6ea85b16a94ec77.jpg!q70.jpg.webp","name":"性价比版(多功能/三脚架)","skuId":100005906650,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"飞利浦 三脚架无线自拍杆 蓝牙遥控 迷你便携 短视频/直播支架 360°旋转 安卓/苹果手机通用 DLK3617N"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5075.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5053.90","packId":50065667998,"productList":[{"skuPicUrl":"jfs/t1/42989/10/14719/330864/5d79a363Eb33e4a02/292577f6d4a9f747.jpg!q70.jpg.webp","name":"防指纹黑色 mate30/mate30 5G通用","skuId":100007696272,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"KOOLIFE 华为MATE30手机壳 华为mate30 5G玻璃款保护套 无边框个性超薄磨砂男女时尚外壳 裸机手感-黑色"},{"skuPicUrl":"jfs/t1/50183/17/11466/579139/5d88687aEe94136c5/79411486cbf6a8a1.jpg!q70.jpg.webp","name":"mate30/mate30 5G通用 手机贴膜","skuId":100004444055,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"KOOLIFE 华为mate30非钢化膜 华为MATE30 5G水凝膜 全覆盖膜手机保护膜2片装 高透前膜-透明"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5042.90","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5028.00","packId":200000168114,"productList":[{"skuPicUrl":"jfs/t1/91859/11/13229/593424/5e535a0fE14641f42/71eb4d1a8384dfe7.jpg!q70.jpg.webp","name":"【指纹解锁、四层防水】-陨石黑","skuId":100005295242,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"毕亚兹 手机防水袋 户外游泳防水包潜水套外卖快递触屏多功能大号密封袋手机通用型升级版挂绳款JK753-陨石黑"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5025.00","packName":"Discount package"}],"domain":"https://m.360buyimg.com/n3/","suitNumText":"该商品共有12个优惠套装","class":"com.jd.app.server.warecoresoa.domain.suit.SuitInfo","discountMark":"tab_var_071","mainSkuName":"华为 HUAWEI Mate 30 5G 麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB亮黑色5G全网通游戏手机"},"promotionInfo":{"isBargain":false,"prompt":"1;2"},"weightInfo":{"content":"0.6kg","class":"com.jd.app.server.warecoresoa.domain.stock.WeightFareInfo$WeightInfo","title":"重量"},"flashInfo":{"state":0,"class":"com.jd.app.server.warecoresoa.domain.flash.FlashInfo","cd":0}}
         * mId : bpMainImage
         * refId : eMainImage_0000000030
         * sortId : 1
         */


        private DataBean data;


        public static class DataBean {
            /**
             * threeDSwitch : false
             * videoControl : {"optimize":true,"class":"com.jd.app.server.warecoresoa.domain.video.VideoControl","autoPlay":false,"masterVideo":{"playUrl":"https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/v.f30.mp4?dockingId=12943a9e-481b-4cf7-a062-cfac52a7a2c1&storageSource=3","duration":60,"imageUrl":"https://img.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/imageSampleSnapshot/1574669045_12981449.100_6008.jpg","videoShare":{"class":"com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideoShare","microBlog":"我发现了一个精彩的视频，快来看看吧https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255","title":"这个小视频不错哦~","des":"我发现了一个精彩的视频，快来看看吧","url":"https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255"},"videoId":"129653998","class":"com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideo","videoDuration":"01'00\""}}
             * isShowAR : false
             * bgc : #ffffff
             * priceIcon : {"kanJia":"https://m.360buyimg.com/cc/jfs/t18559/311/1506989738/3700/cea16f48/5acdf410N0435a64a.png","jiangJia":"https://m.360buyimg.com/cc/jfs/t17767/313/1571185437/16553/ad5bc0be/5acdf3deN0078de63.png"}
             * priceInfo : {"saveMoney":"省330元","originPrice":"4799.00","jprice":"4469.00"}
             * showAttentionPriceFloor : true
             * showAttention : true
             * ad : {"adword":"【直降500元！现货当天发】12期免息，华为官方直供！\n【赠】华为原装无线充+彩屏运动手环+双耳真无线蓝牙耳机+钢化膜等【Mate30pro5G】","textColor":"#8C8C8C","color":"#f23030","newALContent":true,"hasFold":true,"class":"com.jd.app.server.warecoresoa.domain.AdWordInfo.AdWordInfo","adLinkContent":"查看>","adLink":"https://item.jd.com/59725365523.html"}
             * CccKernel : [{"icon":"https://m.360buyimg.com/cc/jfs/t18391/185/1623415222/894/e4f01bb5/5ad09367N6054a929.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"2019年11月","paramName":"上市时间"},{"icon":"https://m.360buyimg.com/cc/jfs/t19759/243/1630561111/625/4c73d190/5ad09218Nb257967a.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"4200mAh","paramName":"电池容量"},{"icon":"https://m.360buyimg.com/cc/jfs/t17074/228/1590408415/1051/be82b5bd/5ad092d5N82f62244.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"8.4mm","paramName":"机身厚度"},{"icon":"https://m.360buyimg.com/cc/jfs/t18007/38/1592657759/998/2c3d6166/5ad09390Nd09d1d15.png","class":"com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo","paramValue":"双卡双待","paramName":"双卡机类型"}]
             * specBuryPoint : 上市时间_电池容量_机身厚度_双卡机类型
             * title : 规格
             * selectInfo : {"inTitle":"放心购服务","gdImage":"https://m.360buyimg.com/cc/jfs/t1/99381/10/14559/23398/5e663a40E04a3595d/28127312190b5f68.png","imgUrl":"https://m.360buyimg.com/cc/jfs/t1/39921/1/2586/7056/5cc17384E3360544f/ff4ec59f07836b1e.png","dgImage":"https://m.360buyimg.com/cc/jfs/t1/41681/22/12662/8785/5d5e5e21Ee8bdca91/d8c40eb6318f7f09.png"}
             * trustworthy : {"iconInDialog":"https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png","iconUrl":"https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png","iconListOne":[{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}],"class":"com.jd.app.server.warecoresoa.domain.icon.TrustworthyInfo","guideJumpUrl":"https://web.shop.jd.com/PurchaseAtEase/index.html","type":"p","iconList":[{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}],"guideText":"了解详情","separator":"·"}
             * preferentialGuide : {"iconCode":"detail_var_045","promotion":{"plusMark":"tab_var_124","gift":[{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57601351429","value":"华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"46447880993","value":"华为（HUAWEI）原装无线充电器 快充版 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"42223536637","value":"真无线蓝牙耳机 （以实物为准） 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"37431101133","value":"通用适配半屏钢化膜/软膜（因手机不同，图片仅供参考） 精美钢化膜（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57602649444","value":"彩屏版运动手环M4（颜色随机 以实物为准） 黑色（条件：购买1件及以上，赠完即止）"},{"text":"赠品","num":"1","link":"https://aco.m.jd.com?channel=phonepage","skuId":"","value":"体验卡免费领，多款APP免流，超大流量任性用，点击领取"}],"isTwoLine":true,"tip":"以下促销，可在购物车任选其一","activityTypes":["3","10","15"],"screenLiPurMap":{},"canReturnHaggleInfo":false,"activity":[{"value":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次","text":"限购","skuId":"","proSortNum":8,"link":"","proId":"73282401872","promoId":""},{"value":"满4509元减10元","text":"满减","skuId":"","proSortNum":4,"link":"","proId":"33890832767","promoId":"33890832767"}],"plusDiscountMap":{},"class":"com.jd.app.server.warecoresoa.domain.promotion.PromotionInfo","isBargain":false,"limitBuyInfo":{"limitNum":"0","noSaleFlag":"0","promotionText":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次"},"attach":[],"prompt":"1;2","tips":[],"normalMark":"tab_var_071"},"whiteBarInfo":{"marketingText":"领立减80元优惠券，12期内免息","planInfos":[{"rate":"0.00","plan":12,"isMaxdiscount":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo","secondTitle":"无服务费","laterPay":"372.38","mainTitle":"¥372.38 x 12期","planFee":"0.00"}],"ava":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WhiteBarInfo","login":true,"url":"https://bt.jd.com/v3/mobile/rGuide_initGuideMobile?source=JD_zw&channelName=SXY&secondCode=&recommend=","btUser":false},"couponInfo":[],"hasFinanceCoupon":false}
             * actions : {"bizActs":[{"icon":"https://m.360buyimg.com/cc/jfs/t1/17024/4/15356/2143/5caeb5efEf90f64a9/f4205d7302e4433c.png","jumpType":1,"truthBigSale":false,"desc":"旧品回收，免费估价，极速到账","mustLogin":false,"bizKey":"yjhx","class":"com.jd.app.server.warecoresoa.domain.activity.Activity","url":"https://huishou.m.jd.com/index?s=1&skuId=59788201255&cid1=9987&cid2=653&cid3=655&province=1&city=72&county=2839&source=3&activityType=1&commodityType=1&town=0&latitude=39.98642&longitude=116.47881"},{"icon":"https://m.360buyimg.com/cc/jfs/t1/108748/26/3663/3756/5e1315b3Eac1294ee/5c2161b496c4db39.png","jumpType":1,"truthBigSale":false,"desc":"首次开通领红包，专属权益全家享","mustLogin":false,"bizKey":"family","class":"com.jd.app.server.warecoresoa.domain.activity.Activity","url":"https://myfamily.jd.com/?jdreactkey=JDReactMyFamily&jdreactapp=JDReactMyFamily&rn_transparentenable=true&rn_page=inviterPage&ishidden=true&rn_source=shangxiang"}]}
             * selected :
             * defaultAddr : {"provinceId":"1","countyName":"四环到五环之间","cityId":"72","townName":"","cityName":"朝阳区","class":"com.jd.app.server.warecoresoa.domain.vo.AddressInfo","townId":"0","provinceName":"北京","countyId":"2839"}
             * stock : 现货
             * fare : 免运费
             * serviceInfo : {"class":"com.jd.app.server.warecoresoa.domain.icon.ServiceInfo","basic":{"iconList":[{"jichu":false,"text":"不可使用京券东券","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png","sortId":13,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品不可使用京券、东券","iconType":"exclamation"},{"jichu":false,"text":"7天无理由退货（激活后不支持）","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1918/274/1086575987/1970/bc766f2d/5680f4b3N24b48659.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持7天无理由退货(激活后不支持)","iconType":"right"},{"jichu":false,"text":"货到付款","imageUrl":"https://img30.360buyimg.com/mobilecms/g13/M06/10/11/rBEhUlLL13kIAAAAAAAEeT_oUHcAAHskQP_-boAAASR577.jpg","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持送货上门后再收款，支持现金、POS机刷卡等方式","iconType":"right"},{"jichu":false,"text":"店铺发货&售后","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2176/234/1856411458/2044/91ae040b/5680f585N70da96a6.png","sortId":6,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"由掌视界数码旗舰店发货并提供售后服务","iconType":"right"}],"class":"com.jd.app.server.warecoresoa.domain.icon.BasicServiceInfo","title":"基础服务"}}
             * servIconRelation : [{"iconValue":"detail_006","class":"com.jd.app.server.warecoresoa.domain.icon.ServIconRelation","iconType":"exclamation"},{"iconValue":"detail_005","class":"com.jd.app.server.warecoresoa.domain.icon.ServIconRelation","iconType":"right"}]
             * isIcon : true
             * unitedRank : {"id":"231144950","icon":"icon","jumpType":"OPENAPP","desc":"入选『夜拍出色的高清屏手机精选』","titleImage":"titleImage","arrowImage":"arrowImage","rankType":5,"bgImage":"bgImage","url":"openapp.jdmobile://virtual?params={\"modulename\":\"JDReactRankingList\",\"des\":\"jdreactcommon\",\"category\":\"jump\",\"param\":{\"detailPageType\":\"2\",\"innerIndex\":2,\"contentId\":\"231144950\",\"fromSkuId\":\"59788201255\"},\"appname\":\"JDReactRankingList\",\"ishidden\":true,\"fromName\":\"Productdetail\",\"transparentenable\":true}"}
             * eventId : Productdetail
             * bizList : [{"icon":"https://m.360buyimg.com/cc/jfs/t8746/206/1817663053/1477/344350f9/59bfa60fNd6d66c7c.png","title":"手机靓号 ","desc":"全国流量不限量","mustLogin":false,"bizKey":"redCard","type":1,"url":"https://pro.m.jd.com/mall/active/37KLd8my2W19ekZLTHsz5WvEx7uu/index.html"},{"icon":"https://m.360buyimg.com/mobilecms/jfs/t1156/166/1499324257/1982/49bdbf10/572c6869N578efca5.png","title":"保障服务","desc":"为商品保驾护航","mustLogin":false,"jumpData":{"bizType":2},"bizKey":"ensure","type":3,"url":"2"}]
             * slide : {"slideColor":"#e3e5e9","slideSelect":"#F0250F"}
             * text3 :
             * jumpUrl : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=-99999
             * tailIconH : 20
             * text1 : 热门配件
             * text2 : 查看全部
             * imgInfo : [{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/35794/7/2043/7048/5cb9ce74Eabf015ac/37b91e86245190d6.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=10","imgJumpType":1,"imgText":"移动电源"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/30424/11/15586/30467/5cc27df0Eca5f38f6/e6612eb7fb630db5.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=13","imgJumpType":1,"imgText":"数据线"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/40612/18/452/17692/5cc265b6Ed82d1bf5/24bbf9d972a05e1c.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=16","imgJumpType":1,"imgText":"蓝牙耳机"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/43418/24/463/51435/5cc2674cE80cc404a/2a929c7ff34954a8.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=286","imgJumpType":1,"imgText":"手机耳机"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/41793/24/486/17962/5cc26b5dEfb0c7cd1/30bf2d76b1a35b68.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=12","imgJumpType":1,"imgText":"充电器"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/50346/27/14570/25103/5db947b1E23dcda5e/2a25f40f7011b6c7.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=292","imgJumpType":1,"imgText":"拍照配件"},{"imgUrl":"https://img12.360buyimg.com/img/jfs/t1/79129/24/14200/31350/5db94896E90a92bf6/fbdecb9b982071e0.png","imgJumpUrl":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=254","imgJumpType":1,"imgText":"手机支架"}]
             * text2C : #2E2D2D
             * text1C : #2E2D2D
             * viewMore : true
             * text1B : true
             * text3C : #000000
             * text3Bgc : #F9F9F9
             * tailIcon : https://m.360buyimg.com/cc/jfs/t20419/242/1733633141/407/d3fcd52b/5b31f170Neb3e95e0.png
             * jumpType : 1
             * text1S : 26
             * buried : Productdetail
             * text2S : 24
             * text3S : 24
             * recommend :
             * priceLabel : ¥
             * tabUrl : https://in.m.jd.com/product/detail/59788201255.html
             * attentionInfo : {"txt1":"关注","txt2":"已关注"}
             * rankName : 入选『夜拍出色的高清屏手机精选』
             * isOpenH5 : true
             * yuyueInfo : {"plusType":0,"isbuyTime":false,"isYuYue":false,"yuYue":false,"yuyueNum":0,"mad":false,"class":"com.jd.app.server.warecoresoa.domain.appoint.WareAppointInfo"}
             * rankType : 5
             * buttonInfo : {"second":{"bgColor":"#F10000,#FF2000,#FF4F18;#D80000,#E51C00,#E54615;#bfbfbf,#bfbfbf,#bfbfbf","class":"com.jd.app.server.warecoresoa.domain.cart.Button","textColor":"#ffffffff","type":0,"source":0,"name":"加入购物车"},"class":"com.jd.app.server.warecoresoa.domain.cart.ButtonInfo","main":{"bgColor":"#FFA600,#FFB000,#FFBC00;#E59500,#E59B00,#E6A800;#bfbfbf,#bfbfbf,#bfbfbf","class":"com.jd.app.server.warecoresoa.domain.cart.Button","textColor":"#ffffffff","type":1,"source":0,"name":"立即购买"}}
             * promotionPoint : {"class":"com.jd.app.server.warecoresoa.domain.promotion.ProBuryingPoint","promotionSkinPoint":"0","promotionTagPoint":"0"}
             * miaoshaInfo : {"icon":"detail_026","state":2,"seckillType":"1","class":"com.jd.app.server.warecoresoa.domain.seckill.SecKillShowInfo","miaosha":true,"miaoshaRemainTime":"43518","title":"京东秒杀"}
             * pointInfo : {"isShowAr":false,"trustworthy":"1"}
             * isOpenCar : true
             * recommendToast : {"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendInfo","recommends":[{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t22450/43/1465607416/12172/beeff364/5b5ffa4cNf3ea7b03.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=10"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/61739/27/4121/1607/5d242719E90014906/6d75f8d3ea82f739.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=13"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/70227/9/4061/3654/5d2426c1E6d4ae927/8b8c24a49c60ff0c.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=16"}],"toastExplain":"为您推荐品质配件","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId="}
             * isOpenNode : true
             * isDesCbc : true
             * yanBaoInfo : {"yanBaoDetailUrl":"https://static.360buyimg.com/finance/mobile/insurance/warrantyServiceDesc/html/warrantyExtension.html?mainSkuId=59788201255&brandId=8557&thirdCategoryId=655&bindSkuId=","yanBaoList":[{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"299.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修3年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224921668},{"price":"189.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修2年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224073273,"discount":"品质购 直降"},{"price":"216.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"首年全保换新","tip":"性能/意外故障一折换JD新机","platformPid":64019721974,"discount":"换新运费全免"}],"sortName":"全面保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t4543/105/4229305177/1459/b754e0ca/590c0c7dNfb7ce9fe.png"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"199.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"原厂碎屏保","tip":"1年意外导致屏幕、后盖碎免费更换","platformPid":55636841897,"discount":"华为官方"},{"price":"169.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保2年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":55150688951},{"price":"129.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保1年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":42227138196}],"sortName":"屏幕保护","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t30094/131/703993755/763/1abbf077/5bfb8aa3N033cd955.jpg"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"39.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"电池保2年","tip":"容量续航问题免费换原厂电池","platformPid":55031321777},{"price":"339.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"京享无忧2年","tip":"原厂物料2年全保修+回收换新补贴","platformPid":59700151209,"discount":"赠服务等价补贴"},{"price":"229.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"免费换1年","tip":"三包故障，享JD免费换机一次","platformPid":55039501435}],"sortName":"官修保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t1/79067/18/9323/1913/5d6e299aE5dae5e92/ea7516d00ede9296.png"}],"yanBaoTitle":"保障服务","yanBaoUrl":"https://baozhang.jd.com/static/serviceDesc"}
             * wareImage : [{"share":"https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.jpg","big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/47469/27/14148/137157/5dafac76Eaab9f044/8ba4978c5289cf47.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/47469/27/14148/137157/5dafac76Eaab9f044/8ba4978c5289cf47.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/83575/19/11659/114158/5dafac76Eb3df03fe/c6c0a4e3ca0b20f7.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/83575/19/11659/114158/5dafac76Eb3df03fe/c6c0a4e3ca0b20f7.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/75600/18/13641/39019/5dafac76Eb8229987/7428741cf0a21441.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/75600/18/13641/39019/5dafac76Eb8229987/7428741cf0a21441.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/50209/7/14038/81911/5dafac76Ebde48868/0df55a6769e5fbf7.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/50209/7/14038/81911/5dafac76Ebde48868/0df55a6769e5fbf7.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/59066/6/13868/28718/5dafac76E35ffbc07/bf58e647aaf3f4b8.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/59066/6/13868/28718/5dafac76E35ffbc07/bf58e647aaf3f4b8.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/96809/18/523/83326/5dafac77E7cbb0f21/218243306e9e6542.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/96809/18/523/83326/5dafac77E7cbb0f21/218243306e9e6542.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100932/5/562/21213/5dafac77E646d4620/77f196d46af6c282.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100932/5/562/21213/5dafac77E646d4620/77f196d46af6c282.jpg!q70.dpg.webp"},{"big":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100655/1/560/32736/5dafac77Ea480d26e/ba4fb479179a8e07.jpg!q70.dpg.webp","small":"https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100655/1/560/32736/5dafac77Ea480d26e/ba4fb479179a8e07.jpg!q70.dpg.webp"}]
             * jdSerPlusInfo : {"jdSerPlusList":[{"scIconUrl":"https://img30.360buyimg.com/test/jfs/t17776/210/2003594126/2589/af1c7233/5ae2a05aN07067189.png","scId":468,"class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusItem","scName":"特色服务","products":[{"itemIndex":1,"serviceSkuShortName":"数据恢复","serviceSkuAdWord":"恢复数据 恢复感情","class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusProduct","serviceSku":"7093704","serviceSkuPrice":"39.00"}],"scOrder":2}],"jdSerPlusUrl":"https://m-weixiu.jd.com/spbuy/getServicePlusInfo?pid=100009177424,1,72,2839,0,","jdSerPlusTitle":"京东服务+"}
             * defineSkinChange : {"imageUrl":"https://m.360buyimg.com/cc/jfs/t1/89891/17/179/48419/5da87c96E86f1aad7/8404be9847e92c46.png","infoBoxTextColor":"#FFFFFF","cdTextColor":"#FE1743","infoBoxColor":"#DA0029","cdBackColor":"#FFF5EA","infoBoxPell":"0.9","cdNumColor":"#FFFFFF","cdNumBoxColor":"#FE1743"}
             * shareImgInfo : {"shareLanguage":"推荐一个好物给你，请查收","promotionStr":"【满减】满4509元减10元","priceDes":"价格具有时效性","markingOff":true,"priceUrl":"https://m.360buyimg.com/cc/jfs/t1/16989/25/11991/6282/5c933b48Eb4fd488e/03e6606b4decb734.png","jprice":"4469.00","secondPrice":"4799.00"}
             * wareInfo : {"skuId":"59788201255","venderId":"653506","name":"华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)"}
             * property : {"easyBuy":true,"isShowShopNameB":false,"isFlimPrint":"","isPop":true,"isRx":false,"isOP":false,"isEncrypt":true,"treatyIntroUrl":"https://pro.m.jd.com/mall/active/Zwdz5grwF8fTpiha3XVNGHu2kaU/index.html","isShowBarrage":true,"isCollect":false,"addAndSubToast":{"lowestToastText":"最少购买1件哦！"},"virtualCardUrl":"https://gamerecg.m.jd.com?skuId=59788201255&chargeType=655&skuName=华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)&skuPrice=4469.00","isFxyl":false,"isJx":false,"buyMaxNum":200,"showEmptyPrice":false,"chatUrl":"https://m.360buyimg.com/n3/jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg.webp","evaluateTabEnable":true,"wareImageTest":"","noStockOrder":false,"opForIos":true,"suitABTest":0,"androidImageSwitch":true,"isJzfp":false,"isRegularPrice":true,"treatyIntroText":"合约机购买说明","category":"9987;653;655","stockNotice":false,"isRegisterUser":false,"shareUrl":"https://item.m.jd.com/product/59788201255.html?wxa_abtest=o","recTabEnable":true,"cartFlag":true,"isEasyBuyPrice":true,"isOTC":"0"}
             * supportSale : true
             * isOpen : true
             * appointAndPresaleOpen : true
             * abTestInfo : {"noBotmShop":false,"easyDelAB":true,"rankYhTag":true,"newuserFreeAb":false,"toABTest":true,"specialSelectAB":true,"shareM":"a","skuSource":1,"shopExtendsAb":true,"showBuyLayer":true,"evaluateAB":false,"newUser":false,"shopABTest":"a","recommendYhTag":true,"hospitalAB":"A","class":"com.jd.app.server.warecoresoa.domain.abTest.ABTestInfo","shopPromotionAB":"B","recommendPopup":false,"feedBackAB":true,"collectABInfo":{"titleABTest":true,"class":"com.jd.app.server.warecoresoa.domain.abTest.CollectABInfo","bottom3ABTest":true,"bottom4ABTest":true},"shareShield":false,"packABTest":1,"shopCardTypeAb":true,"attentionAB":"A","shopIntensifyAB":false}
             * eventParam : {"sep":"{\"area\":\"1_72_2839_0\",\"sku\":[[\"59788201255\",\"4469.00\",\"现货\",\"33\",\"0\"]]}"}
             * abTest800 : true
             * colorSizeInfo : {"colorSize":[{"title":"颜色","buttons":[{"text":"亮黑","no":"1","skuList":["59724611000","59788201252","62197897734","62197897735"]},{"text":"罗兰紫","no":"3","skuList":["59788201253","59788201254","62197897736","62197897737"]},{"text":"翡冷翠","no":"5","skuList":["59788201255","59788201256","62197897738","62197897739"]},{"text":"星河银","no":"7","skuList":["59788201257","59788201258","62197897740","62197897741"]},{"text":"丹霞橙","no":"9","skuList":["59788201259","59788201260","62197897742","62197897743"]},{"text":"青山黛","no":"11","skuList":["59788201261","59788201262","62197897744","62197897745"]}]},{"title":"版本","buttons":[{"text":"全网通(8G+128G)(5G版)","no":"1","skuList":["59724611000","59788201253","59788201255","59788201257","59788201259","59788201261"]},{"text":"全网通(8G+256G)(5G版)","no":"3","skuList":["59788201252","59788201254","59788201256","59788201258","59788201260","59788201262"]},{"text":"全网通(6G+128G)(4G版)","no":"6","skuList":["62197897734","62197897736","62197897738","62197897740","62197897742","62197897744"]},{"text":"全网通(8G+128G)(4G版)","no":"7","skuList":["62197897735","62197897737","62197897739","62197897741","62197897743","62197897745"]}]}],"colorSizeTips":"#与其他已选项无法组成可售商品，请重选"}
             * shopInfo : {"customerService":{"hotLineInfo":{"hotLinePhoneExtend":"400-610-1360转342876","hotLineContent":"请选择客服联系方式","hotLineService":"在线客服","class":"com.jd.app.server.warecoresoa.domain.shop.HotlineInfo","hotLinePhone":"400-610-1360"},"hasChat":true,"hasJimi":false,"allGoodJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"allProduct\"}","chatInfo":{"shopText":"联系客服","allGoodText":"精选商品","class":"com.jd.app.server.warecoresoa.domain.chat.ChatInfo","bottomText":"联系客服","allGoodIcon":"detail_030","bottomIcon":"detail_044","shopIcon":"detail_044","isBubble":false},"mLink":"https://m.jd.com/product/59788201255.html","inShopLookJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"home\"}","online":true},"shop":{"shopActivityTotalNum":35,"skuText":"商品","promotions":[{"name":"限时秒杀","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"secKillPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"限时闪购","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"gwredPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满159减10元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890789178\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满249减20元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890814117\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"}],"score":0,"efficiencyScore":0,"followCount":330051,"afterSaleGrade":"低","afterSaleTxt":"售后","avgEfficiencyScore":0,"shopId":649114,"promotionNum":0,"shopStarTxt":"店铺星级","squareLogo":"https://img10.360buyimg.com/cms/jfs/t1/98747/10/3459/75757/5de0c3d4Ec2948722/9a79ef65b4b72197.jpg","shopStateText":"店铺动态","cateGoodShop":0,"followText":"关注人数","class":"com.jd.app.server.warecoresoa.domain.shop.SkuShopInfo","serverText":"服务","cardType":3,"afterSaleScore":"8.87","scoreRankRateGrade":"4.0","hasCoupon":false,"avgServiceScore":0,"giftIcon":"","globalGoodShop":0,"goodShop":0,"hotcatestr":"主营各大品牌智能手机！","signboardUrl":"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg","logisticsScore":"8.57","hotcates":[{"commendSkuId":59724611000,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":10593729,"cname":"爆款专区"},{"commendSkuId":47784189130,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/57880/24/3495/100223/5d135516Ed1016603/4ae6c05d45b38bcb.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116548,"cname":"华为手机"},{"commendSkuId":56177164557,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/67458/29/9214/89945/5d70639cE57eba3f3/0cd0ef95b6e5eb0b.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116549,"cname":"荣耀手机"},{"commendSkuId":60778985698,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/81941/29/14709/978996/5dc29505E2d10d773/547e9a8bf49f1f63.png","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":13316550,"cname":"mate30系列"}],"logisticsTxt":"物流","evaluateTxt":"评价","isSquareLogo":true,"diamond":false,"name":"掌视界数码旗舰店","evaluateScore":"8.69","serviceScore":0,"logo":"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg","logisticsText":"物流","avgWareScore":0,"evaluateGrade":"低","nameB":"掌视界数码旗舰店","totalNum":147,"newNum":0,"logisticsGrade":"低","venderType":"0","shopImage":"https://img12.360buyimg.com/cms/jfs/t1/63385/39/13393/195054/5da80b54E8829a64c/b9ac4f77993f1bd6.jpg","skuCntText":"全部商品","scoreText":"综合评分","telephone":"400-610-1360转342876","wareScore":0,"brief":"主营各大品牌智能手机！"}}
             * suit : {"mainSkuPicUrl":"jfs/t1/86172/23/15312/132452/5e6e1185E709e5398/0f1eff851a27b570.jpg!q70.jpg.webp","suitMark":"tab_var_071","mainSkuId":100009177424,"itemList":[{"originalSuitType":0,"packListPrice":"¥5078.80","packId":50057800807,"productList":[{"skuPicUrl":"jfs/t1/103960/30/8248/518904/5e04486fE7283b55d/8a84abd2f298938e.jpg!q70.jpg.webp","name":"mate30/5G通用【蓝光】","skuId":100008355264,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30钢化膜mate30 5G版手机全屏覆盖保护膜huawei曲面热弯玻璃抗蓝光全包无白边抗指纹贴膜por"},{"skuPicUrl":"jfs/t1/104547/36/9304/383360/5e0d5787E1877fa82/372ba171b505bb2a.jpg!q70.jpg.webp","name":"Mate30【裸机手感】魔力黑","skuId":100008712968,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30手机壳mate30 5g版手机防摔全包边保护套hauwei超薄磨砂防指纹个性创意简约潮牌女男款硬壳"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5069.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5049.90","packId":50057801370,"productList":[{"skuPicUrl":"jfs/t1/78089/30/11037/1187793/5d85fd64E91cc65c1/e48dd32c1645dc01.png!q70.jpg.webp","name":"超薄-硅胶防摔软壳-透明 Mate 30/Mate 30 5G通用","skuId":100004422029,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"莜茉YOMO 华为Mate30手机壳 mate30保护套5G手机通用 超薄硅胶全包外壳/TPU抗指纹透明防摔软壳 清透白"},{"skuPicUrl":"jfs/t1/94128/36/6972/747063/5df832bdE5645575c/c895faad4e61521d.jpg!q70.jpg.webp","name":"【Mate30/30 5G】全屏无白边膜","skuId":100007652542,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"莜茉YOMO 华为Mate30钢化膜 mate30手机膜5G手机通用 全屏覆盖无白边淡化指纹高清防爆玻璃膜-黑【2片装】"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5036.50","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5087.00","packId":50057801561,"productList":[{"skuPicUrl":"jfs/t1/96600/15/8350/251519/5e046f8fE6f31980c/30fd4d058f6a577c.jpg!q70.jpg.webp","name":"【全屏高清水晶膜】Mate30","skuId":100008619614,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"邦克仕(Benks)华为Mate30 5G钢化膜 Mate30全屏覆盖手机贴膜 高清耐刮防爆防摔防指纹手机膜 高清膜"},{"skuPicUrl":"jfs/t1/46814/33/14674/125496/5dba734dEdfeded06/8058e9b342fa9d7c.jpg!q70.jpg.webp","name":"Mate30/5G【黑色】硅胶壳","skuId":100008796302,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"邦克仕(Benks)华为Mate30 5G手机壳 HUAWEI Mate 30手机保护套 超薄液态硅胶耐磨防摔软壳 黑色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5066.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5079.00","packId":50057801566,"productList":[{"skuPicUrl":"jfs/t1/108474/15/2874/646076/5e0b1018E7aefc0e9/5b3517a64608ef57.jpg!q70.jpg.webp","name":"新一代工艺 mate30/5G通用【全屏】","skuId":100007469650,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"【钻石膜】瓦力 华为mate30钢化膜 华为Mate30 5G全屏覆盖钢化膜高清手机保护膜 黑色"},{"skuPicUrl":"jfs/t1/100887/36/2137/328869/5dcbdfdaE28ab49fb/d5e9628b45526063.jpg!q70.jpg.webp","name":"纤薄如初&还原裸机 Mate30","skuId":100007652938,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"瓦力（VALEA）华为mate30手机壳5g/4g版通用保护套 mate30轻薄手机套磨砂防摔软壳  黑色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5060.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5122.90","packId":50057802118,"productList":[{"skuPicUrl":"jfs/t1/43827/36/15928/524224/5d89cc17E11b81ea9/898c1be30ec093a4.jpg!q70.jpg.webp","name":"黑色","skuId":100008619582,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"华为 HUAWEI Mate 30 硅胶保护壳 黑色"},{"skuPicUrl":"jfs/t1/46960/15/14819/243442/5dbe82b0Ed0cd9dad/d2f1310ce5bcff69.jpg!q70.jpg.webp","name":"【Mate30/30 5G通用】全屏","skuId":100007816820,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"中陌（zigmog）华为Mate30钢化膜 Mate30 高清手机贴膜 曲面全屏覆盖玻璃 防爆防指纹保护膜 自动贴附"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5082.90","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5038.90","packId":50057803047,"productList":[{"skuPicUrl":"jfs/t1/46538/34/2726/698474/5d08edc7E6a257e94/2990ee0f56067c5c.jpg!q70.jpg.webp","name":"22.5W快充头+5A数据线[快充套装] 白色","skuId":100005745512,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"乔威 华为22.5W充电器头 5A超级快充+5AType-c数据线充电套装  用于安卓/华为/荣耀/小米 白色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5033.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5083.90","packId":50057803116,"productList":[{"skuPicUrl":"jfs/t1/52197/38/16357/150774/5dd625e2E4b7ae2ba/82d08e3c2fcf2a37.jpg!q70.jpg.webp","name":"华为SuperCharge【5A闪充线】1米","skuId":6468018,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"绿联 Type-C数据线5A超级快充 通用华为Mate30/20/P30pro/nova5/荣耀/小米8/9手机充电线安卓USB-C转接头1米"},{"skuPicUrl":"jfs/t1/106634/14/1649/526717/5dc29280Eb0ac1c04/be2ec2fc3b0edce6.jpg!q70.jpg.webp","name":"华为超级快充22.5W充电头","skuId":100006961440,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"绿联 5A超级快充 22.5W充电器通用华为Mate30/20/P20/P30Pro荣耀10/V20手机4.5V/5A闪充插头 兼容QC/FCP50548"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5071.70","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5118.00","packId":50057803503,"productList":[{"skuPicUrl":"jfs/t1/64032/7/16706/273344/5de1010fEf37a730f/c73085e04b62950c.jpg!q70.jpg.webp","name":"【22.5w双向快充】2万毫安","skuId":100009743866,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"罗马仕 ROMOSS PSW20PF 华为充电宝移动电源20000毫安时22.5W大容量PD双向快充适用于苹果小米安卓"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5094.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5028.00","packId":50057804452,"productList":[{"skuPicUrl":"jfs/t1/98062/39/14371/291698/5e65c488Ea488f52b/31e8c948c5299f21.jpg!q70.jpg.webp","name":"5A支持华为快充-白-1米","skuId":100006610876,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"飞利浦 Type-C数据线 5A超级快充手机充电线 安卓USB-C转接头充电器支持小米8/9/华为P30/Mate10/20 1米1612A"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5020.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5098.00","packId":50057804494,"productList":[{"skuPicUrl":"jfs/t1/45177/15/13230/349040/5da177fcEa89d1ce7/c6ea85b16a94ec77.jpg!q70.jpg.webp","name":"性价比版(多功能/三脚架)","skuId":100005906650,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"飞利浦 三脚架无线自拍杆 蓝牙遥控 迷你便携 短视频/直播支架 360°旋转 安卓/苹果手机通用 DLK3617N"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5075.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5053.90","packId":50065667998,"productList":[{"skuPicUrl":"jfs/t1/42989/10/14719/330864/5d79a363Eb33e4a02/292577f6d4a9f747.jpg!q70.jpg.webp","name":"防指纹黑色 mate30/mate30 5G通用","skuId":100007696272,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"KOOLIFE 华为MATE30手机壳 华为mate30 5G玻璃款保护套 无边框个性超薄磨砂男女时尚外壳 裸机手感-黑色"},{"skuPicUrl":"jfs/t1/50183/17/11466/579139/5d88687aEe94136c5/79411486cbf6a8a1.jpg!q70.jpg.webp","name":"mate30/mate30 5G通用 手机贴膜","skuId":100004444055,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"KOOLIFE 华为mate30非钢化膜 华为MATE30 5G水凝膜 全覆盖膜手机保护膜2片装 高透前膜-透明"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5042.90","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5028.00","packId":200000168114,"productList":[{"skuPicUrl":"jfs/t1/91859/11/13229/593424/5e535a0fE14641f42/71eb4d1a8384dfe7.jpg!q70.jpg.webp","name":"【指纹解锁、四层防水】-陨石黑","skuId":100005295242,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"毕亚兹 手机防水袋 户外游泳防水包潜水套外卖快递触屏多功能大号密封袋手机通用型升级版挂绳款JK753-陨石黑"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5025.00","packName":"Discount package"}],"domain":"https://m.360buyimg.com/n3/","suitNumText":"该商品共有12个优惠套装","class":"com.jd.app.server.warecoresoa.domain.suit.SuitInfo","discountMark":"tab_var_071","mainSkuName":"华为 HUAWEI Mate 30 5G 麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB亮黑色5G全网通游戏手机"}
             * promotionInfo : {"isBargain":false,"prompt":"1;2"}
             * weightInfo : {"content":"0.6kg","class":"com.jd.app.server.warecoresoa.domain.stock.WeightFareInfo$WeightInfo","title":"重量"}
             * flashInfo : {"state":0,"class":"com.jd.app.server.warecoresoa.domain.flash.FlashInfo","cd":0}
             */

            private boolean threeDSwitch;
            private VideoControlBean videoControl;
            private boolean isShowAR;
            private String bgc;
            private PriceIconBean priceIcon;
            private PriceInfoBean priceInfo;
            private boolean showAttentionPriceFloor;
            private boolean showAttention;
            private AdBean ad;
            private String specBuryPoint;
            private String title;
            private SelectInfoBean selectInfo;
            private TrustworthyBean trustworthy;
            private PreferentialGuideBean preferentialGuide;
            private ActionsBean actions;
            private String selected;
            private DefaultAddrBean defaultAddr;
            private String stock;
            private String fare;
            private ServiceInfoBean serviceInfo;
            private boolean isIcon;
            private UnitedRankBean unitedRank;
            private String eventId;
            private SlideBean slide;
            private String text3;
            private String jumpUrl;
            private int tailIconH;
            private String text1;
            private String text2;
            private String text2C;
            private String text1C;
            private boolean viewMore;
            private boolean text1B;
            private String text3C;
            private String text3Bgc;
            private String tailIcon;
            private int jumpType;
            private int text1S;
            private String buried;
            private int text2S;
            private int text3S;
            private String recommend;
            private String priceLabel;
            private String tabUrl;
            private AttentionInfoBean attentionInfo;
            private String rankName;
            private boolean isOpenH5;
            private YuyueInfoBean yuyueInfo;
            private int rankType;
            private ButtonInfoBean buttonInfo;
            private PromotionPointBean promotionPoint;
            private MiaoshaInfoBean miaoshaInfo;
            private PointInfoBean pointInfo;
            private boolean isOpenCar;
            private RecommendToastBean recommendToast;
            private boolean isOpenNode;
            private boolean isDesCbc;
            private YanBaoInfoBean yanBaoInfo;
            private JdSerPlusInfoBean jdSerPlusInfo;
            private DefineSkinChangeBean defineSkinChange;
            private ShareImgInfoBean shareImgInfo;
            private WareInfoBean wareInfo;
            private PropertyBean property;
            private boolean supportSale;
            private boolean isOpen;
            private boolean appointAndPresaleOpen;
            private AbTestInfoBean abTestInfo;
            private EventParamBean eventParam;
            private boolean abTest800;
            private ColorSizeInfoBean colorSizeInfo;
            private ShopInfoBean shopInfo;
            private SuitBean suit;
            private PromotionInfoBean promotionInfo;
            private WeightInfoBean weightInfo;
            private FlashInfoBean flashInfo;
            private List<CccKernelBean> CccKernel;
            private List<ServIconRelationBean> servIconRelation;
            private List<BizListBean> bizList;
            private List<ImgInfoBean> imgInfo;
            private List<WareImageBean> wareImage;

            public static class VideoControlBean {

                private boolean optimize;
                private boolean autoPlay;
                private MasterVideoBean masterVideo;

                public static class MasterVideoBean {
                    /**
                     * playUrl : https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/v.f30.mp4?dockingId=12943a9e-481b-4cf7-a062-cfac52a7a2c1&storageSource=3
                     * duration : 60
                     * imageUrl : https://img.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/imageSampleSnapshot/1574669045_12981449.100_6008.jpg
                     * videoShare : {"class":"com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideoShare","microBlog":"我发现了一个精彩的视频，快来看看吧https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255","title":"这个小视频不错哦~","des":"我发现了一个精彩的视频，快来看看吧","url":"https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255"}
                     * videoId : 129653998
                     * class : com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideo
                     * videoDuration : 01'00"
                     */

                    private String playUrl;
                    private int duration;
                    private String imageUrl;
                    private VideoShareBean videoShare;
                    private String videoId;
                    private String videoDuration;


                    public static class VideoShareBean {
                        /**
                         * class : com.jd.app.server.warecoresoa.domain.masterVideo.MasterVideoShare
                         * microBlog : 我发现了一个精彩的视频，快来看看吧https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255
                         * title : 这个小视频不错哦~
                         * des : 我发现了一个精彩的视频，快来看看吧
                         * url : https://h5.m.jd.com/dev/3UmozpxSyHxMaXRXndHbUhwC4iuN/index.html?skuId=59788201255
                         */

                        private String microBlog;
                        private String title;
                        private String des;
                        private String url;

                        public String getMicroBlog() {
                            return microBlog;
                        }

                        public void setMicroBlog(String microBlog) {
                            this.microBlog = microBlog;
                        }

                        public String getTitle() {
                            return title;
                        }

                        public void setTitle(String title) {
                            this.title = title;
                        }

                        public String getDes() {
                            return des;
                        }

                        public void setDes(String des) {
                            this.des = des;
                        }

                        public String getUrl() {
                            return url;
                        }

                        public void setUrl(String url) {
                            this.url = url;
                        }
                    }
                }
            }

            public static class PriceIconBean {
                /**
                 * kanJia : https://m.360buyimg.com/cc/jfs/t18559/311/1506989738/3700/cea16f48/5acdf410N0435a64a.png
                 * jiangJia : https://m.360buyimg.com/cc/jfs/t17767/313/1571185437/16553/ad5bc0be/5acdf3deN0078de63.png
                 */

                private String kanJia;
                private String jiangJia;

                public String getKanJia() {
                    return kanJia;
                }

                public void setKanJia(String kanJia) {
                    this.kanJia = kanJia;
                }

                public String getJiangJia() {
                    return jiangJia;
                }

                public void setJiangJia(String jiangJia) {
                    this.jiangJia = jiangJia;
                }
            }

            public static class PriceInfoBean {
                /**
                 * saveMoney : 省330元
                 * originPrice : 4799.00
                 * jprice : 4469.00
                 */

                private String saveMoney;
                private String originPrice;
                private String jprice;

                public String getSaveMoney() {
                    return saveMoney;
                }

                public void setSaveMoney(String saveMoney) {
                    this.saveMoney = saveMoney;
                }

                public String getOriginPrice() {
                    return originPrice;
                }

                public void setOriginPrice(String originPrice) {
                    this.originPrice = originPrice;
                }

                public String getJprice() {
                    return jprice;
                }

                public void setJprice(String jprice) {
                    this.jprice = jprice;
                }
            }

            public static class AdBean {
                /**
                 * adword : 【直降500元！现货当天发】12期免息，华为官方直供！
                 【赠】华为原装无线充+彩屏运动手环+双耳真无线蓝牙耳机+钢化膜等【Mate30pro5G】
                 * textColor : #8C8C8C
                 * color : #f23030
                 * newALContent : true
                 * hasFold : true
                 * class : com.jd.app.server.warecoresoa.domain.AdWordInfo.AdWordInfo
                 * adLinkContent : 查看>
                 * adLink : https://item.jd.com/59725365523.html
                 */

                private String adword;
                private String textColor;
                private String color;
                private boolean newALContent;
                private boolean hasFold;

                private String adLinkContent;
                private String adLink;


            }

            public static class SelectInfoBean {
                /**
                 * inTitle : 放心购服务
                 * gdImage : https://m.360buyimg.com/cc/jfs/t1/99381/10/14559/23398/5e663a40E04a3595d/28127312190b5f68.png
                 * imgUrl : https://m.360buyimg.com/cc/jfs/t1/39921/1/2586/7056/5cc17384E3360544f/ff4ec59f07836b1e.png
                 * dgImage : https://m.360buyimg.com/cc/jfs/t1/41681/22/12662/8785/5d5e5e21Ee8bdca91/d8c40eb6318f7f09.png
                 */

                private String inTitle;
                private String gdImage;
                private String imgUrl;
                private String dgImage;

            }

            public static class TrustworthyBean {
                /**
                 * iconInDialog : https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png
                 * iconUrl : https://m.360buyimg.com/cc/jfs/t1/26327/31/14606/8101/5ca87911Ed2a57594/30bb5ce1817f480f.png
                 * iconListOne : [{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}]
                 * class : com.jd.app.server.warecoresoa.domain.icon.TrustworthyInfo
                 * guideJumpUrl : https://web.shop.jd.com/PurchaseAtEase/index.html
                 * type : p
                 * iconList : [{"jichu":false,"text":"运费险","imageUrl":"https://m.360buyimg.com/cc/jfs/t10588/133/232543489/1787/fae50699/59c9029cN0e2c23b2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"送运费险","iconType":"right"},{"jichu":false,"text":"一年质保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"商品自签收之日起一年内出现质保范围内质量问题，商家视情形在规定时效内向消费者提供退换货、免费维修、免费补寄或提供维修费等形式的售后保障服务","iconType":"right"},{"jichu":false,"text":"全国联保","imageUrl":"https://img20.360buyimg.com/cms/jfs/t19081/162/2287283438/2390/bd04833a/5aeff583N486c49a2.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"消费者购买的商品，可就近选择全国任何地方的品牌售后服务网点享受商品维修或升级服务","iconType":"right"},{"jichu":false,"text":"30天价保","imageUrl":"https://img12.360buyimg.com/cms/jfs/t17392/50/2193380502/1757/a1750a73/5aec1d89Nd2d12bd5.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品支持30天价保，下单30天内前台京东价发生降价可以申请价格保护。","iconType":"right"}]
                 * guideText : 了解详情
                 * separator : ·
                 */

                private String iconInDialog;
                private String iconUrl;
                private String guideJumpUrl;
                private String type;
                private String guideText;
                private String separator;
                private List<IconListOneBean> iconListOne;
                private List<IconListBean> iconList;

                public static class IconListOneBean {
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

                    private boolean jichu;
                    private String text;
                    private String imageUrl;
                    private int sortId;
                    private boolean show;
                    private String tip;
                    private String iconType;
                }

                public static class IconListBean {
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

                    private boolean jichu;
                    private String text;
                    private String imageUrl;
                    private int sortId;
                    private boolean show;
                    private String tip;
                    private String iconType;

                }
            }

            public static class PreferentialGuideBean {
                /**
                 * iconCode : detail_var_045
                 * promotion : {"plusMark":"tab_var_124","gift":[{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57601351429","value":"华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"46447880993","value":"华为（HUAWEI）原装无线充电器 快充版 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"42223536637","value":"真无线蓝牙耳机 （以实物为准） 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"37431101133","value":"通用适配半屏钢化膜/软膜（因手机不同，图片仅供参考） 精美钢化膜（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57602649444","value":"彩屏版运动手环M4（颜色随机 以实物为准） 黑色（条件：购买1件及以上，赠完即止）"},{"text":"赠品","num":"1","link":"https://aco.m.jd.com?channel=phonepage","skuId":"","value":"体验卡免费领，多款APP免流，超大流量任性用，点击领取"}],"isTwoLine":true,"tip":"以下促销，可在购物车任选其一","activityTypes":["3","10","15"],"screenLiPurMap":{},"canReturnHaggleInfo":false,"activity":[{"value":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次","text":"限购","skuId":"","proSortNum":8,"link":"","proId":"73282401872","promoId":""},{"value":"满4509元减10元","text":"满减","skuId":"","proSortNum":4,"link":"","proId":"33890832767","promoId":"33890832767"}],"plusDiscountMap":{},"class":"com.jd.app.server.warecoresoa.domain.promotion.PromotionInfo","isBargain":false,"limitBuyInfo":{"limitNum":"0","noSaleFlag":"0","promotionText":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次"},"attach":[],"prompt":"1;2","tips":[],"normalMark":"tab_var_071"}
                 * whiteBarInfo : {"marketingText":"领立减80元优惠券，12期内免息","planInfos":[{"rate":"0.00","plan":12,"isMaxdiscount":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo","secondTitle":"无服务费","laterPay":"372.38","mainTitle":"¥372.38 x 12期","planFee":"0.00"}],"ava":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WhiteBarInfo","login":true,"url":"https://bt.jd.com/v3/mobile/rGuide_initGuideMobile?source=JD_zw&channelName=SXY&secondCode=&recommend=","btUser":false}
                 * couponInfo : []
                 * hasFinanceCoupon : false
                 */

                private String iconCode;
                private PromotionBean promotion;
                private WhiteBarInfoBean whiteBarInfo;
                private boolean hasFinanceCoupon;


                public static class PromotionBean {
                    /**
                     * plusMark : tab_var_124
                     * gift : [{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57601351429","value":"华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"46447880993","value":"华为（HUAWEI）原装无线充电器 快充版 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"42223536637","value":"真无线蓝牙耳机 （以实物为准） 白色（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"37431101133","value":"通用适配半屏钢化膜/软膜（因手机不同，图片仅供参考） 精美钢化膜（条件：购买1件及以上，赠完即止）"},{"proId":"101054392899","text":"赠品","num":"1","link":"","skuId":"57602649444","value":"彩屏版运动手环M4（颜色随机 以实物为准） 黑色（条件：购买1件及以上，赠完即止）"},{"text":"赠品","num":"1","link":"https://aco.m.jd.com?channel=phonepage","skuId":"","value":"体验卡免费领，多款APP免流，超大流量任性用，点击领取"}]
                     * isTwoLine : true
                     * tip : 以下促销，可在购物车任选其一
                     * activityTypes : ["3","10","15"]
                     * screenLiPurMap : {}
                     * canReturnHaggleInfo : false
                     * activity : [{"value":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次","text":"限购","skuId":"","proSortNum":8,"link":"","proId":"73282401872","promoId":""},{"value":"满4509元减10元","text":"满减","skuId":"","proSortNum":4,"link":"","proId":"33890832767","promoId":"33890832767"}]
                     * plusDiscountMap : {}
                     * class : com.jd.app.server.warecoresoa.domain.promotion.PromotionInfo
                     * isBargain : false
                     * limitBuyInfo : {"limitNum":"0","noSaleFlag":"0","promotionText":"该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次"}
                     * attach : []
                     * prompt : 1;2
                     * tips : []
                     * normalMark : tab_var_071
                     */

                    private String plusMark;
                    private boolean isTwoLine;
                    private String tip;
                    private ScreenLiPurMapBean screenLiPurMap;
                    private boolean canReturnHaggleInfo;
                    private PlusDiscountMapBean plusDiscountMap;
                    private boolean isBargain;
                    private LimitBuyInfoBean limitBuyInfo;
                    private String prompt;
                    private String normalMark;
                    private List<GiftBean> gift;
                    private List<String> activityTypes;
                    private List<ActivityBean> activity;

                    public static class ScreenLiPurMapBean {
                    }

                    public static class PlusDiscountMapBean {
                    }

                    public static class LimitBuyInfoBean {
                        /**
                         * limitNum : 0
                         * noSaleFlag : 0
                         * promotionText : 该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次
                         */

                        private String limitNum;
                        private String noSaleFlag;
                        private String promotionText;

                        public String getLimitNum() {
                            return limitNum;
                        }

                        public void setLimitNum(String limitNum) {
                            this.limitNum = limitNum;
                        }

                        public String getNoSaleFlag() {
                            return noSaleFlag;
                        }

                        public void setNoSaleFlag(String noSaleFlag) {
                            this.noSaleFlag = noSaleFlag;
                        }

                        public String getPromotionText() {
                            return promotionText;
                        }

                        public void setPromotionText(String promotionText) {
                            this.promotionText = promotionText;
                        }
                    }

                    public static class GiftBean {
                        /**
                         * proId : 101054392899
                         * text : 赠品
                         * num : 1
                         * link :
                         * skuId : 57601351429
                         * value : 华为mate30智能视窗保护套 （颜色随机 以实物为准）（条件：购买1件及以上，赠完即止）
                         */

                        private String proId;
                        private String text;
                        private String num;
                        private String link;
                        private String skuId;
                        private String value;

                    }

                    public static class ActivityBean {
                        /**
                         * value : 该商品购买1-30件时享受单件价￥4469.00，超出数量以结算价为准，仅限购买一次
                         * text : 限购
                         * skuId :
                         * proSortNum : 8
                         * link :
                         * proId : 73282401872
                         * promoId :
                         */

                        private String value;
                        private String text;
                        private String skuId;
                        private int proSortNum;
                        private String link;
                        private String proId;
                        private String promoId;
                    }
                }

                public static class WhiteBarInfoBean {
                    /**
                     * marketingText : 领立减80元优惠券，12期内免息
                     * planInfos : [{"rate":"0.00","plan":12,"isMaxdiscount":true,"class":"com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo","secondTitle":"无服务费","laterPay":"372.38","mainTitle":"¥372.38 x 12期","planFee":"0.00"}]
                     * ava : true
                     * class : com.jd.app.server.warecoresoa.domain.whitebar.WhiteBarInfo
                     * login : true
                     * url : https://bt.jd.com/v3/mobile/rGuide_initGuideMobile?source=JD_zw&channelName=SXY&secondCode=&recommend=
                     * btUser : false
                     */

                    private String marketingText;
                    private boolean ava;
                    private boolean login;
                    private String url;
                    private boolean btUser;
                    private List<PlanInfosBean> planInfos;

                    public static class PlanInfosBean {
                        /**
                         * rate : 0.00
                         * plan : 12
                         * isMaxdiscount : true
                         * class : com.jd.app.server.warecoresoa.domain.whitebar.WarePayBillInfo
                         * secondTitle : 无服务费
                         * laterPay : 372.38
                         * mainTitle : ¥372.38 x 12期
                         * planFee : 0.00
                         */

                        private String rate;
                        private int plan;
                        private boolean isMaxdiscount;
                        private String secondTitle;
                        private String laterPay;
                        private String mainTitle;
                        private String planFee;
                    }
                }
            }

            public static class ActionsBean {
                private List<BizActsBean> bizActs;

                public List<BizActsBean> getBizActs() {
                    return bizActs;
                }

                public void setBizActs(List<BizActsBean> bizActs) {
                    this.bizActs = bizActs;
                }

                public static class BizActsBean {
                    /**
                     * icon : https://m.360buyimg.com/cc/jfs/t1/17024/4/15356/2143/5caeb5efEf90f64a9/f4205d7302e4433c.png
                     * jumpType : 1
                     * truthBigSale : false
                     * desc : 旧品回收，免费估价，极速到账
                     * mustLogin : false
                     * bizKey : yjhx
                     * class : com.jd.app.server.warecoresoa.domain.activity.Activity
                     * url : https://huishou.m.jd.com/index?s=1&skuId=59788201255&cid1=9987&cid2=653&cid3=655&province=1&city=72&county=2839&source=3&activityType=1&commodityType=1&town=0&latitude=39.98642&longitude=116.47881
                     */

                    private String icon;
                    private int jumpType;
                    private boolean truthBigSale;
                    private String desc;
                    private boolean mustLogin;
                    private String bizKey;
                    private String url;

                }
            }

            public static class DefaultAddrBean {
                /**
                 * provinceId : 1
                 * countyName : 四环到五环之间
                 * cityId : 72
                 * townName :
                 * cityName : 朝阳区
                 * class : com.jd.app.server.warecoresoa.domain.vo.AddressInfo
                 * townId : 0
                 * provinceName : 北京
                 * countyId : 2839
                 */

                private String provinceId;
                private String countyName;
                private String cityId;
                private String townName;
                private String cityName;
                private String townId;
                private String provinceName;
                private String countyId;

            }

            public static class ServiceInfoBean {
                /**
                 * class : com.jd.app.server.warecoresoa.domain.icon.ServiceInfo
                 * basic : {"iconList":[{"jichu":false,"text":"不可使用京券东券","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png","sortId":13,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品不可使用京券、东券","iconType":"exclamation"},{"jichu":false,"text":"7天无理由退货（激活后不支持）","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1918/274/1086575987/1970/bc766f2d/5680f4b3N24b48659.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持7天无理由退货(激活后不支持)","iconType":"right"},{"jichu":false,"text":"货到付款","imageUrl":"https://img30.360buyimg.com/mobilecms/g13/M06/10/11/rBEhUlLL13kIAAAAAAAEeT_oUHcAAHskQP_-boAAASR577.jpg","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持送货上门后再收款，支持现金、POS机刷卡等方式","iconType":"right"},{"jichu":false,"text":"店铺发货&售后","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2176/234/1856411458/2044/91ae040b/5680f585N70da96a6.png","sortId":6,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"由掌视界数码旗舰店发货并提供售后服务","iconType":"right"}],"class":"com.jd.app.server.warecoresoa.domain.icon.BasicServiceInfo","title":"基础服务"}
                 */

                private BasicBean basic;

                public static class BasicBean {
                    /**
                     * iconList : [{"jichu":false,"text":"不可使用京券东券","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png","sortId":13,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"此商品不可使用京券、东券","iconType":"exclamation"},{"jichu":false,"text":"7天无理由退货（激活后不支持）","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1918/274/1086575987/1970/bc766f2d/5680f4b3N24b48659.png","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持7天无理由退货(激活后不支持)","iconType":"right"},{"jichu":false,"text":"货到付款","imageUrl":"https://img30.360buyimg.com/mobilecms/g13/M06/10/11/rBEhUlLL13kIAAAAAAAEeT_oUHcAAHskQP_-boAAASR577.jpg","sortId":7,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"支持送货上门后再收款，支持现金、POS机刷卡等方式","iconType":"right"},{"jichu":false,"text":"店铺发货&售后","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t2176/234/1856411458/2044/91ae040b/5680f585N70da96a6.png","sortId":6,"class":"com.jd.app.server.warecoresoa.domain.icon.ServerIcon","show":true,"tip":"由掌视界数码旗舰店发货并提供售后服务","iconType":"right"}]
                     * class : com.jd.app.server.warecoresoa.domain.icon.BasicServiceInfo
                     * title : 基础服务
                     */

                    private String title;
                    private List<IconListBeanX> iconList;

                    public static class IconListBeanX {
                        /**
                         * jichu : false
                         * text : 不可使用京券东券
                         * imageUrl : https://m.360buyimg.com/mobilecms/jfs/t2812/303/4025969561/2165/30df9c1b/57aa8a96Nfd0933fa.png
                         * sortId : 13
                         * class : com.jd.app.server.warecoresoa.domain.icon.ServerIcon
                         * show : true
                         * tip : 此商品不可使用京券、东券
                         * iconType : exclamation
                         */

                        private boolean jichu;
                        private String text;
                        private String imageUrl;
                        private int sortId;
                        private boolean show;
                        private String tip;
                        private String iconType;

                    }
                }
            }

            public static class UnitedRankBean {
                /**
                 * id : 231144950
                 * icon : icon
                 * jumpType : OPENAPP
                 * desc : 入选『夜拍出色的高清屏手机精选』
                 * titleImage : titleImage
                 * arrowImage : arrowImage
                 * rankType : 5
                 * bgImage : bgImage
                 * url : openapp.jdmobile://virtual?params={"modulename":"JDReactRankingList","des":"jdreactcommon","category":"jump","param":{"detailPageType":"2","innerIndex":2,"contentId":"231144950","fromSkuId":"59788201255"},"appname":"JDReactRankingList","ishidden":true,"fromName":"Productdetail","transparentenable":true}
                 */

                private String id;
                private String icon;
                private String jumpType;
                private String desc;
                private String titleImage;
                private String arrowImage;
                private int rankType;
                private String bgImage;
                private String url;

            }

            public static class SlideBean {
                /**
                 * slideColor : #e3e5e9
                 * slideSelect : #F0250F
                 */

                private String slideColor;
                private String slideSelect;

                public String getSlideColor() {
                    return slideColor;
                }

                public void setSlideColor(String slideColor) {
                    this.slideColor = slideColor;
                }

                public String getSlideSelect() {
                    return slideSelect;
                }

                public void setSlideSelect(String slideSelect) {
                    this.slideSelect = slideSelect;
                }
            }

            public static class AttentionInfoBean {
                /**
                 * txt1 : 关注
                 * txt2 : 已关注
                 */

                private String txt1;
                private String txt2;

                public String getTxt1() {
                    return txt1;
                }

                public void setTxt1(String txt1) {
                    this.txt1 = txt1;
                }

                public String getTxt2() {
                    return txt2;
                }

                public void setTxt2(String txt2) {
                    this.txt2 = txt2;
                }
            }

            public static class YuyueInfoBean {
                /**
                 * plusType : 0
                 * isbuyTime : false
                 * isYuYue : false
                 * yuYue : false
                 * yuyueNum : 0
                 * mad : false
                 * class : com.jd.app.server.warecoresoa.domain.appoint.WareAppointInfo
                 */

                private int plusType;
                private boolean isbuyTime;
                private boolean isYuYue;
                private boolean yuYue;
                private int yuyueNum;
                private boolean mad;
                 
                private String classXYZ;

                public int getPlusType() {
                    return plusType;
                }

                public void setPlusType(int plusType) {
                    this.plusType = plusType;
                }

                public boolean isIsbuyTime() {
                    return isbuyTime;
                }

                public void setIsbuyTime(boolean isbuyTime) {
                    this.isbuyTime = isbuyTime;
                }

                public boolean isIsYuYue() {
                    return isYuYue;
                }

                public void setIsYuYue(boolean isYuYue) {
                    this.isYuYue = isYuYue;
                }

                public boolean isYuYue() {
                    return yuYue;
                }

                public void setYuYue(boolean yuYue) {
                    this.yuYue = yuYue;
                }

                public int getYuyueNum() {
                    return yuyueNum;
                }

                public void setYuyueNum(int yuyueNum) {
                    this.yuyueNum = yuyueNum;
                }

                public boolean isMad() {
                    return mad;
                }

                public void setMad(boolean mad) {
                    this.mad = mad;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }
            }

            public static class ButtonInfoBean {
                /**
                 * second : {"bgColor":"#F10000,#FF2000,#FF4F18;#D80000,#E51C00,#E54615;#bfbfbf,#bfbfbf,#bfbfbf","class":"com.jd.app.server.warecoresoa.domain.cart.Button","textColor":"#ffffffff","type":0,"source":0,"name":"加入购物车"}
                 * class : com.jd.app.server.warecoresoa.domain.cart.ButtonInfo
                 * main : {"bgColor":"#FFA600,#FFB000,#FFBC00;#E59500,#E59B00,#E6A800;#bfbfbf,#bfbfbf,#bfbfbf","class":"com.jd.app.server.warecoresoa.domain.cart.Button","textColor":"#ffffffff","type":1,"source":0,"name":"立即购买"}
                 */

                private SecondBean second;
                 
                private String classXYZ;
                private MainBean main;

                public SecondBean getSecond() {
                    return second;
                }

                public void setSecond(SecondBean second) {
                    this.second = second;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public MainBean getMain() {
                    return main;
                }

                public void setMain(MainBean main) {
                    this.main = main;
                }

                public static class SecondBean {
                    /**
                     * bgColor : #F10000,#FF2000,#FF4F18;#D80000,#E51C00,#E54615;#bfbfbf,#bfbfbf,#bfbfbf
                     * class : com.jd.app.server.warecoresoa.domain.cart.Button
                     * textColor : #ffffffff
                     * type : 0
                     * source : 0
                     * name : 加入购物车
                     */

                    private String bgColor;
                     
                    private String classXYZ;
                    private String textColor;
                    private int type;
                    private int source;
                    private String name;

                    public String getBgColor() {
                        return bgColor;
                    }

                    public void setBgColor(String bgColor) {
                        this.bgColor = bgColor;
                    }

                    public String getclassXYZ() {
                        return classXYZ;
                    }

                    public void setclassXYZ(String classXYZ) {
                        this.classXYZ = classXYZ;
                    }

                    public String getTextColor() {
                        return textColor;
                    }

                    public void setTextColor(String textColor) {
                        this.textColor = textColor;
                    }

                    public int getType() {
                        return type;
                    }

                    public void setType(int type) {
                        this.type = type;
                    }

                    public int getSource() {
                        return source;
                    }

                    public void setSource(int source) {
                        this.source = source;
                    }

                    public String getName() {
                        return name;
                    }

                    public void setName(String name) {
                        this.name = name;
                    }
                }

                public static class MainBean {
                    /**
                     * bgColor : #FFA600,#FFB000,#FFBC00;#E59500,#E59B00,#E6A800;#bfbfbf,#bfbfbf,#bfbfbf
                     * class : com.jd.app.server.warecoresoa.domain.cart.Button
                     * textColor : #ffffffff
                     * type : 1
                     * source : 0
                     * name : 立即购买
                     */

                    private String bgColor;
                     
                    private String classXYZ;
                    private String textColor;
                    private int type;
                    private int source;
                    private String name;

                    public String getBgColor() {
                        return bgColor;
                    }

                    public void setBgColor(String bgColor) {
                        this.bgColor = bgColor;
                    }

                    public String getclassXYZ() {
                        return classXYZ;
                    }

                    public void setclassXYZ(String classXYZ) {
                        this.classXYZ = classXYZ;
                    }

                    public String getTextColor() {
                        return textColor;
                    }

                    public void setTextColor(String textColor) {
                        this.textColor = textColor;
                    }

                    public int getType() {
                        return type;
                    }

                    public void setType(int type) {
                        this.type = type;
                    }

                    public int getSource() {
                        return source;
                    }

                    public void setSource(int source) {
                        this.source = source;
                    }

                    public String getName() {
                        return name;
                    }

                    public void setName(String name) {
                        this.name = name;
                    }
                }
            }

            public static class PromotionPointBean {
                /**
                 * class : com.jd.app.server.warecoresoa.domain.promotion.ProBuryingPoint
                 * promotionSkinPoint : 0
                 * promotionTagPoint : 0
                 */

                 
                private String classXYZ;
                private String promotionSkinPoint;
                private String promotionTagPoint;

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public String getPromotionSkinPoint() {
                    return promotionSkinPoint;
                }

                public void setPromotionSkinPoint(String promotionSkinPoint) {
                    this.promotionSkinPoint = promotionSkinPoint;
                }

                public String getPromotionTagPoint() {
                    return promotionTagPoint;
                }

                public void setPromotionTagPoint(String promotionTagPoint) {
                    this.promotionTagPoint = promotionTagPoint;
                }
            }

            public static class MiaoshaInfoBean {
                /**
                 * icon : detail_026
                 * state : 2
                 * seckillType : 1
                 * class : com.jd.app.server.warecoresoa.domain.seckill.SecKillShowInfo
                 * miaosha : true
                 * miaoshaRemainTime : 43518
                 * title : 京东秒杀
                 */

                private String icon;
                private int state;
                private String seckillType;
                 
                private String classXYZ;
                private boolean miaosha;
                private String miaoshaRemainTime;
                private String title;

                public String getIcon() {
                    return icon;
                }

                public void setIcon(String icon) {
                    this.icon = icon;
                }

                public int getState() {
                    return state;
                }

                public void setState(int state) {
                    this.state = state;
                }

                public String getSeckillType() {
                    return seckillType;
                }

                public void setSeckillType(String seckillType) {
                    this.seckillType = seckillType;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public boolean isMiaosha() {
                    return miaosha;
                }

                public void setMiaosha(boolean miaosha) {
                    this.miaosha = miaosha;
                }

                public String getMiaoshaRemainTime() {
                    return miaoshaRemainTime;
                }

                public void setMiaoshaRemainTime(String miaoshaRemainTime) {
                    this.miaoshaRemainTime = miaoshaRemainTime;
                }

                public String getTitle() {
                    return title;
                }

                public void setTitle(String title) {
                    this.title = title;
                }
            }

            public static class PointInfoBean {
                /**
                 * isShowAr : false
                 * trustworthy : 1
                 */

                private boolean isShowAr;
                private String trustworthy;

                public boolean isIsShowAr() {
                    return isShowAr;
                }

                public void setIsShowAr(boolean isShowAr) {
                    this.isShowAr = isShowAr;
                }

                public String getTrustworthy() {
                    return trustworthy;
                }

                public void setTrustworthy(String trustworthy) {
                    this.trustworthy = trustworthy;
                }
            }

            public static class RecommendToastBean {
                /**
                 * class : com.jd.app.server.warecoresoa.domain.recommendToast.RecommendInfo
                 * recommends : [{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t22450/43/1465607416/12172/beeff364/5b5ffa4cNf3ea7b03.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=10"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/61739/27/4121/1607/5d242719E90014906/6d75f8d3ea82f739.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=13"},{"class":"com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel","image":"https://img12.360buyimg.com/img/jfs/t1/70227/9/4061/3654/5d2426c1E6d4ae927/8b8c24a49c60ff0c.jpg","url":"https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=16"}]
                 * toastExplain : 为您推荐品质配件
                 * url : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=
                 */

                private String toastExplain;
                private String url;
                private List<RecommendsBean> recommends;


                public static class RecommendsBean {
                    /**
                     * class : com.jd.app.server.warecoresoa.domain.recommendToast.RecommendModel
                     * image : https://img12.360buyimg.com/img/jfs/t22450/43/1465607416/12172/beeff364/5b5ffa4cNf3ea7b03.jpg
                     * url : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&eventId=1&accyCategoryId=10
                     */

                    private String image;
                    private String url;


                }
            }

            public static class YanBaoInfoBean {
                /**
                 * yanBaoDetailUrl : https://static.360buyimg.com/finance/mobile/insurance/warrantyServiceDesc/html/warrantyExtension.html?mainSkuId=59788201255&brandId=8557&thirdCategoryId=655&bindSkuId=
                 * yanBaoList : [{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"299.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修3年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224921668},{"price":"189.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修2年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224073273,"discount":"品质购 直降"},{"price":"216.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"首年全保换新","tip":"性能/意外故障一折换JD新机","platformPid":64019721974,"discount":"换新运费全免"}],"sortName":"全面保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t4543/105/4229305177/1459/b754e0ca/590c0c7dNfb7ce9fe.png"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"199.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"原厂碎屏保","tip":"1年意外导致屏幕、后盖碎免费更换","platformPid":55636841897,"discount":"华为官方"},{"price":"169.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保2年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":55150688951},{"price":"129.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"碎屏保1年","tip":"意外坠落、挤压导致碎屏免费换屏","platformPid":42227138196}],"sortName":"屏幕保护","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t30094/131/703993755/763/1abbf077/5bfb8aa3N033cd955.jpg"},{"class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem","products":[{"price":"39.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"电池保2年","tip":"容量续航问题免费换原厂电池","platformPid":55031321777},{"price":"339.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"京享无忧2年","tip":"原厂物料2年全保修+回收换新补贴","platformPid":59700151209,"discount":"赠服务等价补贴"},{"price":"229.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"免费换1年","tip":"三包故障，享JD免费换机一次","platformPid":55039501435}],"sortName":"官修保障","productId":59788201255,"imgurl":"https://img30.360buyimg.com/fuwu/jfs/t1/79067/18/9323/1913/5d6e299aE5dae5e92/ea7516d00ede9296.png"}]
                 * yanBaoTitle : 保障服务
                 * yanBaoUrl : https://baozhang.jd.com/static/serviceDesc
                 */

                private String yanBaoDetailUrl;
                private String yanBaoTitle;
                private String yanBaoUrl;
                private List<YanBaoListBean> yanBaoList;

                public String getYanBaoDetailUrl() {
                    return yanBaoDetailUrl;
                }

                public void setYanBaoDetailUrl(String yanBaoDetailUrl) {
                    this.yanBaoDetailUrl = yanBaoDetailUrl;
                }

                public String getYanBaoTitle() {
                    return yanBaoTitle;
                }

                public void setYanBaoTitle(String yanBaoTitle) {
                    this.yanBaoTitle = yanBaoTitle;
                }

                public String getYanBaoUrl() {
                    return yanBaoUrl;
                }

                public void setYanBaoUrl(String yanBaoUrl) {
                    this.yanBaoUrl = yanBaoUrl;
                }

                public List<YanBaoListBean> getYanBaoList() {
                    return yanBaoList;
                }

                public void setYanBaoList(List<YanBaoListBean> yanBaoList) {
                    this.yanBaoList = yanBaoList;
                }

                public static class YanBaoListBean {
                    /**
                     * class : com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyServiceItem
                     * products : [{"price":"299.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修3年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224921668},{"price":"189.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"全保修2年","tip":"三包硬件+碎屏溅液等故障全保修","platformPid":42224073273,"discount":"品质购 直降"},{"price":"216.0","class":"com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct","sortName":"首年全保换新","tip":"性能/意外故障一折换JD新机","platformPid":64019721974,"discount":"换新运费全免"}]
                     * sortName : 全面保障
                     * productId : 59788201255
                     * imgurl : https://img30.360buyimg.com/fuwu/jfs/t4543/105/4229305177/1459/b754e0ca/590c0c7dNfb7ce9fe.png
                     */

                    private String sortName;
                    private long productId;
                    private String imgurl;
                    private List<ProductsBean> products;

                    public static class ProductsBean {
                        /**
                         * price : 299.0
                         * class : com.jd.app.server.warecoresoa.domain.extendWarranty.WareExtendWarrantyInfo$WarrantyProduct
                         * sortName : 全保修3年
                         * tip : 三包硬件+碎屏溅液等故障全保修
                         * platformPid : 42224921668
                         * discount : 品质购 直降
                         */

                        private String price;
                        private String sortName;
                        private String tip;
                        private long platformPid;
                        private String discount;

                    }
                }
            }

            public static class JdSerPlusInfoBean {
                /**
                 * jdSerPlusList : [{"scIconUrl":"https://img30.360buyimg.com/test/jfs/t17776/210/2003594126/2589/af1c7233/5ae2a05aN07067189.png","scId":468,"class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusItem","scName":"特色服务","products":[{"itemIndex":1,"serviceSkuShortName":"数据恢复","serviceSkuAdWord":"恢复数据 恢复感情","class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusProduct","serviceSku":"7093704","serviceSkuPrice":"39.00"}],"scOrder":2}]
                 * jdSerPlusUrl : https://m-weixiu.jd.com/spbuy/getServicePlusInfo?pid=100009177424,1,72,2839,0,
                 * jdSerPlusTitle : 京东服务+
                 */

                private String jdSerPlusUrl;
                private String jdSerPlusTitle;
                private List<JdSerPlusListBean> jdSerPlusList;

                public String getJdSerPlusUrl() {
                    return jdSerPlusUrl;
                }

                public void setJdSerPlusUrl(String jdSerPlusUrl) {
                    this.jdSerPlusUrl = jdSerPlusUrl;
                }

                public String getJdSerPlusTitle() {
                    return jdSerPlusTitle;
                }

                public void setJdSerPlusTitle(String jdSerPlusTitle) {
                    this.jdSerPlusTitle = jdSerPlusTitle;
                }

                public List<JdSerPlusListBean> getJdSerPlusList() {
                    return jdSerPlusList;
                }

                public void setJdSerPlusList(List<JdSerPlusListBean> jdSerPlusList) {
                    this.jdSerPlusList = jdSerPlusList;
                }

                public static class JdSerPlusListBean {
                    /**
                     * scIconUrl : https://img30.360buyimg.com/test/jfs/t17776/210/2003594126/2589/af1c7233/5ae2a05aN07067189.png
                     * scId : 468
                     * class : com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusItem
                     * scName : 特色服务
                     * products : [{"itemIndex":1,"serviceSkuShortName":"数据恢复","serviceSkuAdWord":"恢复数据 恢复感情","class":"com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusProduct","serviceSku":"7093704","serviceSkuPrice":"39.00"}]
                     * scOrder : 2
                     */

                    private String scIconUrl;
                    private int scId;
                     
                    private String classXYZ;
                    private String scName;
                    private int scOrder;
                    private List<ProductsBeanX> products;

                    public String getScIconUrl() {
                        return scIconUrl;
                    }

                    public void setScIconUrl(String scIconUrl) {
                        this.scIconUrl = scIconUrl;
                    }

                    public int getScId() {
                        return scId;
                    }

                    public void setScId(int scId) {
                        this.scId = scId;
                    }

                    public String getclassXYZ() {
                        return classXYZ;
                    }

                    public void setclassXYZ(String classXYZ) {
                        this.classXYZ = classXYZ;
                    }

                    public String getScName() {
                        return scName;
                    }

                    public void setScName(String scName) {
                        this.scName = scName;
                    }

                    public int getScOrder() {
                        return scOrder;
                    }

                    public void setScOrder(int scOrder) {
                        this.scOrder = scOrder;
                    }

                    public List<ProductsBeanX> getProducts() {
                        return products;
                    }

                    public void setProducts(List<ProductsBeanX> products) {
                        this.products = products;
                    }

                    public static class ProductsBeanX {
                        /**
                         * itemIndex : 1
                         * serviceSkuShortName : 数据恢复
                         * serviceSkuAdWord : 恢复数据 恢复感情
                         * class : com.jd.app.server.warecoresoa.domain.serplus.JdSerPlusInfo$JdSerPlusProduct
                         * serviceSku : 7093704
                         * serviceSkuPrice : 39.00
                         */

                        private int itemIndex;
                        private String serviceSkuShortName;
                        private String serviceSkuAdWord;
                         
                        private String classXYZ;
                        private String serviceSku;
                        private String serviceSkuPrice;

                        public int getItemIndex() {
                            return itemIndex;
                        }

                        public void setItemIndex(int itemIndex) {
                            this.itemIndex = itemIndex;
                        }

                        public String getServiceSkuShortName() {
                            return serviceSkuShortName;
                        }

                        public void setServiceSkuShortName(String serviceSkuShortName) {
                            this.serviceSkuShortName = serviceSkuShortName;
                        }

                        public String getServiceSkuAdWord() {
                            return serviceSkuAdWord;
                        }

                        public void setServiceSkuAdWord(String serviceSkuAdWord) {
                            this.serviceSkuAdWord = serviceSkuAdWord;
                        }

                        public String getclassXYZ() {
                            return classXYZ;
                        }

                        public void setclassXYZ(String classXYZ) {
                            this.classXYZ = classXYZ;
                        }

                        public String getServiceSku() {
                            return serviceSku;
                        }

                        public void setServiceSku(String serviceSku) {
                            this.serviceSku = serviceSku;
                        }

                        public String getServiceSkuPrice() {
                            return serviceSkuPrice;
                        }

                        public void setServiceSkuPrice(String serviceSkuPrice) {
                            this.serviceSkuPrice = serviceSkuPrice;
                        }
                    }
                }
            }

            public static class DefineSkinChangeBean {
                /**
                 * imageUrl : https://m.360buyimg.com/cc/jfs/t1/89891/17/179/48419/5da87c96E86f1aad7/8404be9847e92c46.png
                 * infoBoxTextColor : #FFFFFF
                 * cdTextColor : #FE1743
                 * infoBoxColor : #DA0029
                 * cdBackColor : #FFF5EA
                 * infoBoxPell : 0.9
                 * cdNumColor : #FFFFFF
                 * cdNumBoxColor : #FE1743
                 */

                private String imageUrl;
                private String infoBoxTextColor;
                private String cdTextColor;
                private String infoBoxColor;
                private String cdBackColor;
                private String infoBoxPell;
                private String cdNumColor;
                private String cdNumBoxColor;

                public String getImageUrl() {
                    return imageUrl;
                }

                public void setImageUrl(String imageUrl) {
                    this.imageUrl = imageUrl;
                }

                public String getInfoBoxTextColor() {
                    return infoBoxTextColor;
                }

                public void setInfoBoxTextColor(String infoBoxTextColor) {
                    this.infoBoxTextColor = infoBoxTextColor;
                }

                public String getCdTextColor() {
                    return cdTextColor;
                }

                public void setCdTextColor(String cdTextColor) {
                    this.cdTextColor = cdTextColor;
                }

                public String getInfoBoxColor() {
                    return infoBoxColor;
                }

                public void setInfoBoxColor(String infoBoxColor) {
                    this.infoBoxColor = infoBoxColor;
                }

                public String getCdBackColor() {
                    return cdBackColor;
                }

                public void setCdBackColor(String cdBackColor) {
                    this.cdBackColor = cdBackColor;
                }

                public String getInfoBoxPell() {
                    return infoBoxPell;
                }

                public void setInfoBoxPell(String infoBoxPell) {
                    this.infoBoxPell = infoBoxPell;
                }

                public String getCdNumColor() {
                    return cdNumColor;
                }

                public void setCdNumColor(String cdNumColor) {
                    this.cdNumColor = cdNumColor;
                }

                public String getCdNumBoxColor() {
                    return cdNumBoxColor;
                }

                public void setCdNumBoxColor(String cdNumBoxColor) {
                    this.cdNumBoxColor = cdNumBoxColor;
                }
            }

            public static class ShareImgInfoBean {
                /**
                 * shareLanguage : 推荐一个好物给你，请查收
                 * promotionStr : 【满减】满4509元减10元
                 * priceDes : 价格具有时效性
                 * markingOff : true
                 * priceUrl : https://m.360buyimg.com/cc/jfs/t1/16989/25/11991/6282/5c933b48Eb4fd488e/03e6606b4decb734.png
                 * jprice : 4469.00
                 * secondPrice : 4799.00
                 */

                private String shareLanguage;
                private String promotionStr;
                private String priceDes;
                private boolean markingOff;
                private String priceUrl;
                private String jprice;
                private String secondPrice;

                public String getShareLanguage() {
                    return shareLanguage;
                }

                public void setShareLanguage(String shareLanguage) {
                    this.shareLanguage = shareLanguage;
                }

                public String getPromotionStr() {
                    return promotionStr;
                }

                public void setPromotionStr(String promotionStr) {
                    this.promotionStr = promotionStr;
                }

                public String getPriceDes() {
                    return priceDes;
                }

                public void setPriceDes(String priceDes) {
                    this.priceDes = priceDes;
                }

                public boolean isMarkingOff() {
                    return markingOff;
                }

                public void setMarkingOff(boolean markingOff) {
                    this.markingOff = markingOff;
                }

                public String getPriceUrl() {
                    return priceUrl;
                }

                public void setPriceUrl(String priceUrl) {
                    this.priceUrl = priceUrl;
                }

                public String getJprice() {
                    return jprice;
                }

                public void setJprice(String jprice) {
                    this.jprice = jprice;
                }

                public String getSecondPrice() {
                    return secondPrice;
                }

                public void setSecondPrice(String secondPrice) {
                    this.secondPrice = secondPrice;
                }
            }

            public static class WareInfoBean {
                /**
                 * skuId : 59788201255
                 * venderId : 653506
                 * name : 华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)
                 */

                private String skuId;
                private String venderId;
                private String name;

                public String getSkuId() {
                    return skuId;
                }

                public void setSkuId(String skuId) {
                    this.skuId = skuId;
                }

                public String getVenderId() {
                    return venderId;
                }

                public void setVenderId(String venderId) {
                    this.venderId = venderId;
                }

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }
            }

            public static class PropertyBean {
                /**
                 * easyBuy : true
                 * isShowShopNameB : false
                 * isFlimPrint :
                 * isPop : true
                 * isRx : false
                 * isOP : false
                 * isEncrypt : true
                 * treatyIntroUrl : https://pro.m.jd.com/mall/active/Zwdz5grwF8fTpiha3XVNGHu2kaU/index.html
                 * isShowBarrage : true
                 * isCollect : false
                 * addAndSubToast : {"lowestToastText":"最少购买1件哦！"}
                 * virtualCardUrl : https://gamerecg.m.jd.com?skuId=59788201255&chargeType=655&skuName=华为Mate30 手机 (5G/4G版可选) 翡冷翠 全网通(8G+128G)(5G版)&skuPrice=4469.00
                 * isFxyl : false
                 * isJx : false
                 * buyMaxNum : 200
                 * showEmptyPrice : false
                 * chatUrl : https://m.360buyimg.com/n3/jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg.webp
                 * evaluateTabEnable : true
                 * wareImageTest :
                 * noStockOrder : false
                 * opForIos : true
                 * suitABTest : 0
                 * androidImageSwitch : true
                 * isJzfp : false
                 * isRegularPrice : true
                 * treatyIntroText : 合约机购买说明
                 * category : 9987;653;655
                 * stockNotice : false
                 * isRegisterUser : false
                 * shareUrl : https://item.m.jd.com/product/59788201255.html?wxa_abtest=o
                 * recTabEnable : true
                 * cartFlag : true
                 * isEasyBuyPrice : true
                 * isOTC : 0
                 */

                private boolean easyBuy;
                private boolean isShowShopNameB;
                private String isFlimPrint;
                private boolean isPop;
                private boolean isRx;
                private boolean isOP;
                private boolean isEncrypt;
                private String treatyIntroUrl;
                private boolean isShowBarrage;
                private boolean isCollect;
                private AddAndSubToastBean addAndSubToast;
                private String virtualCardUrl;
                private boolean isFxyl;
                private boolean isJx;
                private int buyMaxNum;
                private boolean showEmptyPrice;
                private String chatUrl;
                private boolean evaluateTabEnable;
                private String wareImageTest;
                private boolean noStockOrder;
                private boolean opForIos;
                private int suitABTest;
                private boolean androidImageSwitch;
                private boolean isJzfp;
                private boolean isRegularPrice;
                private String treatyIntroText;
                private String category;
                private boolean stockNotice;
                private boolean isRegisterUser;
                private String shareUrl;
                private boolean recTabEnable;
                private boolean cartFlag;
                private boolean isEasyBuyPrice;
                private String isOTC;

                public boolean isEasyBuy() {
                    return easyBuy;
                }

                public void setEasyBuy(boolean easyBuy) {
                    this.easyBuy = easyBuy;
                }

                public boolean isIsShowShopNameB() {
                    return isShowShopNameB;
                }

                public void setIsShowShopNameB(boolean isShowShopNameB) {
                    this.isShowShopNameB = isShowShopNameB;
                }

                public String getIsFlimPrint() {
                    return isFlimPrint;
                }

                public void setIsFlimPrint(String isFlimPrint) {
                    this.isFlimPrint = isFlimPrint;
                }

                public boolean isIsPop() {
                    return isPop;
                }

                public void setIsPop(boolean isPop) {
                    this.isPop = isPop;
                }

                public boolean isIsRx() {
                    return isRx;
                }

                public void setIsRx(boolean isRx) {
                    this.isRx = isRx;
                }

                public boolean isIsOP() {
                    return isOP;
                }

                public void setIsOP(boolean isOP) {
                    this.isOP = isOP;
                }

                public boolean isIsEncrypt() {
                    return isEncrypt;
                }

                public void setIsEncrypt(boolean isEncrypt) {
                    this.isEncrypt = isEncrypt;
                }

                public String getTreatyIntroUrl() {
                    return treatyIntroUrl;
                }

                public void setTreatyIntroUrl(String treatyIntroUrl) {
                    this.treatyIntroUrl = treatyIntroUrl;
                }

                public boolean isIsShowBarrage() {
                    return isShowBarrage;
                }

                public void setIsShowBarrage(boolean isShowBarrage) {
                    this.isShowBarrage = isShowBarrage;
                }

                public boolean isIsCollect() {
                    return isCollect;
                }

                public void setIsCollect(boolean isCollect) {
                    this.isCollect = isCollect;
                }

                public AddAndSubToastBean getAddAndSubToast() {
                    return addAndSubToast;
                }

                public void setAddAndSubToast(AddAndSubToastBean addAndSubToast) {
                    this.addAndSubToast = addAndSubToast;
                }

                public String getVirtualCardUrl() {
                    return virtualCardUrl;
                }

                public void setVirtualCardUrl(String virtualCardUrl) {
                    this.virtualCardUrl = virtualCardUrl;
                }

                public boolean isIsFxyl() {
                    return isFxyl;
                }

                public void setIsFxyl(boolean isFxyl) {
                    this.isFxyl = isFxyl;
                }

                public boolean isIsJx() {
                    return isJx;
                }

                public void setIsJx(boolean isJx) {
                    this.isJx = isJx;
                }

                public int getBuyMaxNum() {
                    return buyMaxNum;
                }

                public void setBuyMaxNum(int buyMaxNum) {
                    this.buyMaxNum = buyMaxNum;
                }

                public boolean isShowEmptyPrice() {
                    return showEmptyPrice;
                }

                public void setShowEmptyPrice(boolean showEmptyPrice) {
                    this.showEmptyPrice = showEmptyPrice;
                }

                public String getChatUrl() {
                    return chatUrl;
                }

                public void setChatUrl(String chatUrl) {
                    this.chatUrl = chatUrl;
                }

                public boolean isEvaluateTabEnable() {
                    return evaluateTabEnable;
                }

                public void setEvaluateTabEnable(boolean evaluateTabEnable) {
                    this.evaluateTabEnable = evaluateTabEnable;
                }

                public String getWareImageTest() {
                    return wareImageTest;
                }

                public void setWareImageTest(String wareImageTest) {
                    this.wareImageTest = wareImageTest;
                }

                public boolean isNoStockOrder() {
                    return noStockOrder;
                }

                public void setNoStockOrder(boolean noStockOrder) {
                    this.noStockOrder = noStockOrder;
                }

                public boolean isOpForIos() {
                    return opForIos;
                }

                public void setOpForIos(boolean opForIos) {
                    this.opForIos = opForIos;
                }

                public int getSuitABTest() {
                    return suitABTest;
                }

                public void setSuitABTest(int suitABTest) {
                    this.suitABTest = suitABTest;
                }

                public boolean isAndroidImageSwitch() {
                    return androidImageSwitch;
                }

                public void setAndroidImageSwitch(boolean androidImageSwitch) {
                    this.androidImageSwitch = androidImageSwitch;
                }

                public boolean isIsJzfp() {
                    return isJzfp;
                }

                public void setIsJzfp(boolean isJzfp) {
                    this.isJzfp = isJzfp;
                }

                public boolean isIsRegularPrice() {
                    return isRegularPrice;
                }

                public void setIsRegularPrice(boolean isRegularPrice) {
                    this.isRegularPrice = isRegularPrice;
                }

                public String getTreatyIntroText() {
                    return treatyIntroText;
                }

                public void setTreatyIntroText(String treatyIntroText) {
                    this.treatyIntroText = treatyIntroText;
                }

                public String getCategory() {
                    return category;
                }

                public void setCategory(String category) {
                    this.category = category;
                }

                public boolean isStockNotice() {
                    return stockNotice;
                }

                public void setStockNotice(boolean stockNotice) {
                    this.stockNotice = stockNotice;
                }

                public boolean isIsRegisterUser() {
                    return isRegisterUser;
                }

                public void setIsRegisterUser(boolean isRegisterUser) {
                    this.isRegisterUser = isRegisterUser;
                }

                public String getShareUrl() {
                    return shareUrl;
                }

                public void setShareUrl(String shareUrl) {
                    this.shareUrl = shareUrl;
                }

                public boolean isRecTabEnable() {
                    return recTabEnable;
                }

                public void setRecTabEnable(boolean recTabEnable) {
                    this.recTabEnable = recTabEnable;
                }

                public boolean isCartFlag() {
                    return cartFlag;
                }

                public void setCartFlag(boolean cartFlag) {
                    this.cartFlag = cartFlag;
                }

                public boolean isIsEasyBuyPrice() {
                    return isEasyBuyPrice;
                }

                public void setIsEasyBuyPrice(boolean isEasyBuyPrice) {
                    this.isEasyBuyPrice = isEasyBuyPrice;
                }

                public String getIsOTC() {
                    return isOTC;
                }

                public void setIsOTC(String isOTC) {
                    this.isOTC = isOTC;
                }

                public static class AddAndSubToastBean {
                    /**
                     * lowestToastText : 最少购买1件哦！
                     */

                    private String lowestToastText;

                    public String getLowestToastText() {
                        return lowestToastText;
                    }

                    public void setLowestToastText(String lowestToastText) {
                        this.lowestToastText = lowestToastText;
                    }
                }
            }

            public static class AbTestInfoBean {
                /**
                 * noBotmShop : false
                 * easyDelAB : true
                 * rankYhTag : true
                 * newuserFreeAb : false
                 * toABTest : true
                 * specialSelectAB : true
                 * shareM : a
                 * skuSource : 1
                 * shopExtendsAb : true
                 * showBuyLayer : true
                 * evaluateAB : false
                 * newUser : false
                 * shopABTest : a
                 * recommendYhTag : true
                 * hospitalAB : A
                 * class : com.jd.app.server.warecoresoa.domain.abTest.ABTestInfo
                 * shopPromotionAB : B
                 * recommendPopup : false
                 * feedBackAB : true
                 * collectABInfo : {"titleABTest":true,"class":"com.jd.app.server.warecoresoa.domain.abTest.CollectABInfo","bottom3ABTest":true,"bottom4ABTest":true}
                 * shareShield : false
                 * packABTest : 1
                 * shopCardTypeAb : true
                 * attentionAB : A
                 * shopIntensifyAB : false
                 */

                private boolean noBotmShop;
                private boolean easyDelAB;
                private boolean rankYhTag;
                private boolean newuserFreeAb;
                private boolean toABTest;
                private boolean specialSelectAB;
                private String shareM;
                private int skuSource;
                private boolean shopExtendsAb;
                private boolean showBuyLayer;
                private boolean evaluateAB;
                private boolean newUser;
                private String shopABTest;
                private boolean recommendYhTag;
                private String hospitalAB;
                 
                private String classXYZ;
                private String shopPromotionAB;
                private boolean recommendPopup;
                private boolean feedBackAB;
                private CollectABInfoBean collectABInfo;
                private boolean shareShield;
                private int packABTest;
                private boolean shopCardTypeAb;
                private String attentionAB;
                private boolean shopIntensifyAB;

                public boolean isNoBotmShop() {
                    return noBotmShop;
                }

                public void setNoBotmShop(boolean noBotmShop) {
                    this.noBotmShop = noBotmShop;
                }

                public boolean isEasyDelAB() {
                    return easyDelAB;
                }

                public void setEasyDelAB(boolean easyDelAB) {
                    this.easyDelAB = easyDelAB;
                }

                public boolean isRankYhTag() {
                    return rankYhTag;
                }

                public void setRankYhTag(boolean rankYhTag) {
                    this.rankYhTag = rankYhTag;
                }

                public boolean isNewuserFreeAb() {
                    return newuserFreeAb;
                }

                public void setNewuserFreeAb(boolean newuserFreeAb) {
                    this.newuserFreeAb = newuserFreeAb;
                }

                public boolean isToABTest() {
                    return toABTest;
                }

                public void setToABTest(boolean toABTest) {
                    this.toABTest = toABTest;
                }

                public boolean isSpecialSelectAB() {
                    return specialSelectAB;
                }

                public void setSpecialSelectAB(boolean specialSelectAB) {
                    this.specialSelectAB = specialSelectAB;
                }

                public String getShareM() {
                    return shareM;
                }

                public void setShareM(String shareM) {
                    this.shareM = shareM;
                }

                public int getSkuSource() {
                    return skuSource;
                }

                public void setSkuSource(int skuSource) {
                    this.skuSource = skuSource;
                }

                public boolean isShopExtendsAb() {
                    return shopExtendsAb;
                }

                public void setShopExtendsAb(boolean shopExtendsAb) {
                    this.shopExtendsAb = shopExtendsAb;
                }

                public boolean isShowBuyLayer() {
                    return showBuyLayer;
                }

                public void setShowBuyLayer(boolean showBuyLayer) {
                    this.showBuyLayer = showBuyLayer;
                }

                public boolean isEvaluateAB() {
                    return evaluateAB;
                }

                public void setEvaluateAB(boolean evaluateAB) {
                    this.evaluateAB = evaluateAB;
                }

                public boolean isNewUser() {
                    return newUser;
                }

                public void setNewUser(boolean newUser) {
                    this.newUser = newUser;
                }

                public String getShopABTest() {
                    return shopABTest;
                }

                public void setShopABTest(String shopABTest) {
                    this.shopABTest = shopABTest;
                }

                public boolean isRecommendYhTag() {
                    return recommendYhTag;
                }

                public void setRecommendYhTag(boolean recommendYhTag) {
                    this.recommendYhTag = recommendYhTag;
                }

                public String getHospitalAB() {
                    return hospitalAB;
                }

                public void setHospitalAB(String hospitalAB) {
                    this.hospitalAB = hospitalAB;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public String getShopPromotionAB() {
                    return shopPromotionAB;
                }

                public void setShopPromotionAB(String shopPromotionAB) {
                    this.shopPromotionAB = shopPromotionAB;
                }

                public boolean isRecommendPopup() {
                    return recommendPopup;
                }

                public void setRecommendPopup(boolean recommendPopup) {
                    this.recommendPopup = recommendPopup;
                }

                public boolean isFeedBackAB() {
                    return feedBackAB;
                }

                public void setFeedBackAB(boolean feedBackAB) {
                    this.feedBackAB = feedBackAB;
                }

                public CollectABInfoBean getCollectABInfo() {
                    return collectABInfo;
                }

                public void setCollectABInfo(CollectABInfoBean collectABInfo) {
                    this.collectABInfo = collectABInfo;
                }

                public boolean isShareShield() {
                    return shareShield;
                }

                public void setShareShield(boolean shareShield) {
                    this.shareShield = shareShield;
                }

                public int getPackABTest() {
                    return packABTest;
                }

                public void setPackABTest(int packABTest) {
                    this.packABTest = packABTest;
                }

                public boolean isShopCardTypeAb() {
                    return shopCardTypeAb;
                }

                public void setShopCardTypeAb(boolean shopCardTypeAb) {
                    this.shopCardTypeAb = shopCardTypeAb;
                }

                public String getAttentionAB() {
                    return attentionAB;
                }

                public void setAttentionAB(String attentionAB) {
                    this.attentionAB = attentionAB;
                }

                public boolean isShopIntensifyAB() {
                    return shopIntensifyAB;
                }

                public void setShopIntensifyAB(boolean shopIntensifyAB) {
                    this.shopIntensifyAB = shopIntensifyAB;
                }

                public static class CollectABInfoBean {
                    /**
                     * titleABTest : true
                     * class : com.jd.app.server.warecoresoa.domain.abTest.CollectABInfo
                     * bottom3ABTest : true
                     * bottom4ABTest : true
                     */

                    private boolean titleABTest;
                     
                    private String classXYZ;
                    private boolean bottom3ABTest;
                    private boolean bottom4ABTest;

                    public boolean isTitleABTest() {
                        return titleABTest;
                    }

                    public void setTitleABTest(boolean titleABTest) {
                        this.titleABTest = titleABTest;
                    }

                    public String getclassXYZ() {
                        return classXYZ;
                    }

                    public void setclassXYZ(String classXYZ) {
                        this.classXYZ = classXYZ;
                    }

                    public boolean isBottom3ABTest() {
                        return bottom3ABTest;
                    }

                    public void setBottom3ABTest(boolean bottom3ABTest) {
                        this.bottom3ABTest = bottom3ABTest;
                    }

                    public boolean isBottom4ABTest() {
                        return bottom4ABTest;
                    }

                    public void setBottom4ABTest(boolean bottom4ABTest) {
                        this.bottom4ABTest = bottom4ABTest;
                    }
                }
            }

            public static class EventParamBean {
                /**
                 * sep : {"area":"1_72_2839_0","sku":[["59788201255","4469.00","现货","33","0"]]}
                 */

                private String sep;

                public String getSep() {
                    return sep;
                }

                public void setSep(String sep) {
                    this.sep = sep;
                }
            }

            public static class ColorSizeInfoBean {
                /**
                 * colorSize : [{"title":"颜色","buttons":[{"text":"亮黑","no":"1","skuList":["59724611000","59788201252","62197897734","62197897735"]},{"text":"罗兰紫","no":"3","skuList":["59788201253","59788201254","62197897736","62197897737"]},{"text":"翡冷翠","no":"5","skuList":["59788201255","59788201256","62197897738","62197897739"]},{"text":"星河银","no":"7","skuList":["59788201257","59788201258","62197897740","62197897741"]},{"text":"丹霞橙","no":"9","skuList":["59788201259","59788201260","62197897742","62197897743"]},{"text":"青山黛","no":"11","skuList":["59788201261","59788201262","62197897744","62197897745"]}]},{"title":"版本","buttons":[{"text":"全网通(8G+128G)(5G版)","no":"1","skuList":["59724611000","59788201253","59788201255","59788201257","59788201259","59788201261"]},{"text":"全网通(8G+256G)(5G版)","no":"3","skuList":["59788201252","59788201254","59788201256","59788201258","59788201260","59788201262"]},{"text":"全网通(6G+128G)(4G版)","no":"6","skuList":["62197897734","62197897736","62197897738","62197897740","62197897742","62197897744"]},{"text":"全网通(8G+128G)(4G版)","no":"7","skuList":["62197897735","62197897737","62197897739","62197897741","62197897743","62197897745"]}]}]
                 * colorSizeTips : #与其他已选项无法组成可售商品，请重选
                 */

                private String colorSizeTips;
                private List<ColorSizeBean> colorSize;

                public String getColorSizeTips() {
                    return colorSizeTips;
                }

                public void setColorSizeTips(String colorSizeTips) {
                    this.colorSizeTips = colorSizeTips;
                }

                public List<ColorSizeBean> getColorSize() {
                    return colorSize;
                }

                public void setColorSize(List<ColorSizeBean> colorSize) {
                    this.colorSize = colorSize;
                }

                public static class ColorSizeBean {
                    /**
                     * title : 颜色
                     * buttons : [{"text":"亮黑","no":"1","skuList":["59724611000","59788201252","62197897734","62197897735"]},{"text":"罗兰紫","no":"3","skuList":["59788201253","59788201254","62197897736","62197897737"]},{"text":"翡冷翠","no":"5","skuList":["59788201255","59788201256","62197897738","62197897739"]},{"text":"星河银","no":"7","skuList":["59788201257","59788201258","62197897740","62197897741"]},{"text":"丹霞橙","no":"9","skuList":["59788201259","59788201260","62197897742","62197897743"]},{"text":"青山黛","no":"11","skuList":["59788201261","59788201262","62197897744","62197897745"]}]
                     */

                    private String title;
                    private List<ButtonsBean> buttons;

                    public String getTitle() {
                        return title;
                    }

                    public void setTitle(String title) {
                        this.title = title;
                    }

                    public List<ButtonsBean> getButtons() {
                        return buttons;
                    }

                    public void setButtons(List<ButtonsBean> buttons) {
                        this.buttons = buttons;
                    }

                    public static class ButtonsBean {
                        /**
                         * text : 亮黑
                         * no : 1
                         * skuList : ["59724611000","59788201252","62197897734","62197897735"]
                         */

                        private String text;
                        private String no;
                        private List<String> skuList;

                        public String getText() {
                            return text;
                        }

                        public void setText(String text) {
                            this.text = text;
                        }

                        public String getNo() {
                            return no;
                        }

                        public void setNo(String no) {
                            this.no = no;
                        }

                        public List<String> getSkuList() {
                            return skuList;
                        }

                        public void setSkuList(List<String> skuList) {
                            this.skuList = skuList;
                        }
                    }
                }
            }

            public static class ShopInfoBean {
                /**
                 * customerService : {"hotLineInfo":{"hotLinePhoneExtend":"400-610-1360转342876","hotLineContent":"请选择客服联系方式","hotLineService":"在线客服","class":"com.jd.app.server.warecoresoa.domain.shop.HotlineInfo","hotLinePhone":"400-610-1360"},"hasChat":true,"hasJimi":false,"allGoodJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"allProduct\"}","chatInfo":{"shopText":"联系客服","allGoodText":"精选商品","class":"com.jd.app.server.warecoresoa.domain.chat.ChatInfo","bottomText":"联系客服","allGoodIcon":"detail_030","bottomIcon":"detail_044","shopIcon":"detail_044","isBubble":false},"mLink":"https://m.jd.com/product/59788201255.html","inShopLookJumpUrl":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"jumpTab\":\"home\"}","online":true}
                 * shop : {"shopActivityTotalNum":35,"skuText":"商品","promotions":[{"name":"限时秒杀","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"secKillPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"限时闪购","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"gwredPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满159减10元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890789178\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满249减20元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890814117\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"}],"score":0,"efficiencyScore":0,"followCount":330051,"afterSaleGrade":"低","afterSaleTxt":"售后","avgEfficiencyScore":0,"shopId":649114,"promotionNum":0,"shopStarTxt":"店铺星级","squareLogo":"https://img10.360buyimg.com/cms/jfs/t1/98747/10/3459/75757/5de0c3d4Ec2948722/9a79ef65b4b72197.jpg","shopStateText":"店铺动态","cateGoodShop":0,"followText":"关注人数","class":"com.jd.app.server.warecoresoa.domain.shop.SkuShopInfo","serverText":"服务","cardType":3,"afterSaleScore":"8.87","scoreRankRateGrade":"4.0","hasCoupon":false,"avgServiceScore":0,"giftIcon":"","globalGoodShop":0,"goodShop":0,"hotcatestr":"主营各大品牌智能手机！","signboardUrl":"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg","logisticsScore":"8.57","hotcates":[{"commendSkuId":59724611000,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":10593729,"cname":"爆款专区"},{"commendSkuId":47784189130,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/57880/24/3495/100223/5d135516Ed1016603/4ae6c05d45b38bcb.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116548,"cname":"华为手机"},{"commendSkuId":56177164557,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/67458/29/9214/89945/5d70639cE57eba3f3/0cd0ef95b6e5eb0b.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116549,"cname":"荣耀手机"},{"commendSkuId":60778985698,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/81941/29/14709/978996/5dc29505E2d10d773/547e9a8bf49f1f63.png","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":13316550,"cname":"mate30系列"}],"logisticsTxt":"物流","evaluateTxt":"评价","isSquareLogo":true,"diamond":false,"name":"掌视界数码旗舰店","evaluateScore":"8.69","serviceScore":0,"logo":"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg","logisticsText":"物流","avgWareScore":0,"evaluateGrade":"低","nameB":"掌视界数码旗舰店","totalNum":147,"newNum":0,"logisticsGrade":"低","venderType":"0","shopImage":"https://img12.360buyimg.com/cms/jfs/t1/63385/39/13393/195054/5da80b54E8829a64c/b9ac4f77993f1bd6.jpg","skuCntText":"全部商品","scoreText":"综合评分","telephone":"400-610-1360转342876","wareScore":0,"brief":"主营各大品牌智能手机！"}
                 */

                private CustomerServiceBean customerService;
                private ShopBean shop;

                public CustomerServiceBean getCustomerService() {
                    return customerService;
                }

                public void setCustomerService(CustomerServiceBean customerService) {
                    this.customerService = customerService;
                }

                public ShopBean getShop() {
                    return shop;
                }

                public void setShop(ShopBean shop) {
                    this.shop = shop;
                }

                public static class CustomerServiceBean {
                    /**
                     * hotLineInfo : {"hotLinePhoneExtend":"400-610-1360转342876","hotLineContent":"请选择客服联系方式","hotLineService":"在线客服","class":"com.jd.app.server.warecoresoa.domain.shop.HotlineInfo","hotLinePhone":"400-610-1360"}
                     * hasChat : true
                     * hasJimi : false
                     * allGoodJumpUrl : openApp.jdMobile://virtual?params={"category":"jump","des":"jshopMain","shopId":"649114","venderId":"653506","jumpTab":"allProduct"}
                     * chatInfo : {"shopText":"联系客服","allGoodText":"精选商品","class":"com.jd.app.server.warecoresoa.domain.chat.ChatInfo","bottomText":"联系客服","allGoodIcon":"detail_030","bottomIcon":"detail_044","shopIcon":"detail_044","isBubble":false}
                     * mLink : https://m.jd.com/product/59788201255.html
                     * inShopLookJumpUrl : openApp.jdMobile://virtual?params={"category":"jump","des":"jshopMain","shopId":"649114","venderId":"653506","jumpTab":"home"}
                     * online : true
                     */

                    private HotLineInfoBean hotLineInfo;
                    private boolean hasChat;
                    private boolean hasJimi;
                    private String allGoodJumpUrl;
                    private ChatInfoBean chatInfo;
                    private String mLink;
                    private String inShopLookJumpUrl;
                    private boolean online;

                    public static class HotLineInfoBean {
                        /**
                         * hotLinePhoneExtend : 400-610-1360转342876
                         * hotLineContent : 请选择客服联系方式
                         * hotLineService : 在线客服
                         * class : com.jd.app.server.warecoresoa.domain.shop.HotlineInfo
                         * hotLinePhone : 400-610-1360
                         */

                        private String hotLinePhoneExtend;
                        private String hotLineContent;
                        private String hotLineService;
                        private String hotLinePhone;

                        public String getHotLinePhoneExtend() {
                            return hotLinePhoneExtend;
                        }

                        public void setHotLinePhoneExtend(String hotLinePhoneExtend) {
                            this.hotLinePhoneExtend = hotLinePhoneExtend;
                        }

                        public String getHotLineContent() {
                            return hotLineContent;
                        }

                        public void setHotLineContent(String hotLineContent) {
                            this.hotLineContent = hotLineContent;
                        }

                        public String getHotLineService() {
                            return hotLineService;
                        }

                        public void setHotLineService(String hotLineService) {
                            this.hotLineService = hotLineService;
                        }



                        public String getHotLinePhone() {
                            return hotLinePhone;
                        }

                        public void setHotLinePhone(String hotLinePhone) {
                            this.hotLinePhone = hotLinePhone;
                        }
                    }

                    public static class ChatInfoBean {
                        /**
                         * shopText : 联系客服
                         * allGoodText : 精选商品
                         * class : com.jd.app.server.warecoresoa.domain.chat.ChatInfo
                         * bottomText : 联系客服
                         * allGoodIcon : detail_030
                         * bottomIcon : detail_044
                         * shopIcon : detail_044
                         * isBubble : false
                         */

                        private String shopText;
                        private String allGoodText;
                         
                        private String classXYZ;
                        private String bottomText;
                        private String allGoodIcon;
                        private String bottomIcon;
                        private String shopIcon;
                        private boolean isBubble;

                        public String getShopText() {
                            return shopText;
                        }

                        public void setShopText(String shopText) {
                            this.shopText = shopText;
                        }

                        public String getAllGoodText() {
                            return allGoodText;
                        }

                        public void setAllGoodText(String allGoodText) {
                            this.allGoodText = allGoodText;
                        }

                        public String getclassXYZ() {
                            return classXYZ;
                        }

                        public void setclassXYZ(String classXYZ) {
                            this.classXYZ = classXYZ;
                        }

                        public String getBottomText() {
                            return bottomText;
                        }

                        public void setBottomText(String bottomText) {
                            this.bottomText = bottomText;
                        }

                        public String getAllGoodIcon() {
                            return allGoodIcon;
                        }

                        public void setAllGoodIcon(String allGoodIcon) {
                            this.allGoodIcon = allGoodIcon;
                        }

                        public String getBottomIcon() {
                            return bottomIcon;
                        }

                        public void setBottomIcon(String bottomIcon) {
                            this.bottomIcon = bottomIcon;
                        }

                        public String getShopIcon() {
                            return shopIcon;
                        }

                        public void setShopIcon(String shopIcon) {
                            this.shopIcon = shopIcon;
                        }

                        public boolean isIsBubble() {
                            return isBubble;
                        }

                        public void setIsBubble(boolean isBubble) {
                            this.isBubble = isBubble;
                        }
                    }
                }

                public static class ShopBean {
                    /**
                     * shopActivityTotalNum : 35
                     * skuText : 商品
                     * promotions : [{"name":"限时秒杀","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"secKillPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"限时闪购","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"sort\":\"gwredPage\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满159减10元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890789178\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"},{"name":"满249减20元","class":"com.jd.app.server.warecoresoa.domain.shop.ShopPromotion","url":"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"jumpTab\":\"activity\",\"shopId\":\"649114\",\"venderId\":\"653506\",\"shopName\":\"掌视界数码旗舰店\",\"logoUrl\":\"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg\",\"signboardUrl\":\"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg\",\"activityTabInfo\":{\"promotionTitleId\":\"33890814117\"},\"source\":{\"moduleId\":\"app-productDetail\",\"entrance\":\"商详卡片\"}}"}]
                     * score : 0
                     * efficiencyScore : 0
                     * followCount : 330051
                     * afterSaleGrade : 低
                     * afterSaleTxt : 售后
                     * avgEfficiencyScore : 0
                     * shopId : 649114
                     * promotionNum : 0
                     * shopStarTxt : 店铺星级
                     * squareLogo : https://img10.360buyimg.com/cms/jfs/t1/98747/10/3459/75757/5de0c3d4Ec2948722/9a79ef65b4b72197.jpg
                     * shopStateText : 店铺动态
                     * cateGoodShop : 0
                     * followText : 关注人数
                     * class : com.jd.app.server.warecoresoa.domain.shop.SkuShopInfo
                     * serverText : 服务
                     * cardType : 3
                     * afterSaleScore : 8.87
                     * scoreRankRateGrade : 4.0
                     * hasCoupon : false
                     * avgServiceScore : 0
                     * giftIcon :
                     * globalGoodShop : 0
                     * goodShop : 0
                     * hotcatestr : 主营各大品牌智能手机！
                     * signboardUrl : https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg
                     * logisticsScore : 8.57
                     * hotcates : [{"commendSkuId":59724611000,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":10593729,"cname":"爆款专区"},{"commendSkuId":47784189130,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/57880/24/3495/100223/5d135516Ed1016603/4ae6c05d45b38bcb.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116548,"cname":"华为手机"},{"commendSkuId":56177164557,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/67458/29/9214/89945/5d70639cE57eba3f3/0cd0ef95b6e5eb0b.jpg","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":6116549,"cname":"荣耀手机"},{"commendSkuId":60778985698,"imgPath":"https://m.360buyimg.com/n1/jfs/t1/81941/29/14709/978996/5dc29505E2d10d773/547e9a8bf49f1f63.png","class":"com.jd.app.server.warecoresoa.domain.shop.ShopHotCate","cid":13316550,"cname":"mate30系列"}]
                     * logisticsTxt : 物流
                     * evaluateTxt : 评价
                     * isSquareLogo : true
                     * diamond : false
                     * name : 掌视界数码旗舰店
                     * evaluateScore : 8.69
                     * serviceScore : 0
                     * logo : https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg
                     * logisticsText : 物流
                     * avgWareScore : 0
                     * evaluateGrade : 低
                     * nameB : 掌视界数码旗舰店
                     * totalNum : 147
                     * newNum : 0
                     * logisticsGrade : 低
                     * venderType : 0
                     * shopImage : https://img12.360buyimg.com/cms/jfs/t1/63385/39/13393/195054/5da80b54E8829a64c/b9ac4f77993f1bd6.jpg
                     * skuCntText : 全部商品
                     * scoreText : 综合评分
                     * telephone : 400-610-1360转342876
                     * wareScore : 0
                     * brief : 主营各大品牌智能手机！
                     */

                    private int shopActivityTotalNum;
                    private String skuText;
                    private int score;
                    private int efficiencyScore;
                    private int followCount;
                    private String afterSaleGrade;
                    private String afterSaleTxt;
                    private int avgEfficiencyScore;
                    private int shopId;
                    private int promotionNum;
                    private String shopStarTxt;
                    private String squareLogo;
                    private String shopStateText;
                    private int cateGoodShop;
                    private String followText; 
                    private String serverText;
                    private int cardType;
                    private String afterSaleScore;
                    private String scoreRankRateGrade;
                    private boolean hasCoupon;
                    private int avgServiceScore;
                    private String giftIcon;
                    private int globalGoodShop;
                    private int goodShop;
                    private String hotcatestr;
                    private String signboardUrl;
                    private String logisticsScore;
                    private String logisticsTxt;
                    private String evaluateTxt;
                    private boolean isSquareLogo;
                    private boolean diamond;
                    private String name;
                    private String evaluateScore;
                    private int serviceScore;
                    private String logo;
                    private String logisticsText;
                    private int avgWareScore;
                    private String evaluateGrade;
                    private String nameB;
                    private int totalNum;
                    private int newNum;
                    private String logisticsGrade;
                    private String venderType;
                    private String shopImage;
                    private String skuCntText;
                    private String scoreText;
                    private String telephone;
                    private int wareScore;
                    private String brief;
                    private List<PromotionsBean> promotions;
                    private List<HotcatesBean> hotcates;

                    public int getShopActivityTotalNum() {
                        return shopActivityTotalNum;
                    }

                    public void setShopActivityTotalNum(int shopActivityTotalNum) {
                        this.shopActivityTotalNum = shopActivityTotalNum;
                    }

                    public String getSkuText() {
                        return skuText;
                    }

                    public void setSkuText(String skuText) {
                        this.skuText = skuText;
                    }

                    public int getScore() {
                        return score;
                    }

                    public void setScore(int score) {
                        this.score = score;
                    }

                    public int getEfficiencyScore() {
                        return efficiencyScore;
                    }

                    public void setEfficiencyScore(int efficiencyScore) {
                        this.efficiencyScore = efficiencyScore;
                    }

                    public int getFollowCount() {
                        return followCount;
                    }

                    public void setFollowCount(int followCount) {
                        this.followCount = followCount;
                    }

                    public String getAfterSaleGrade() {
                        return afterSaleGrade;
                    }

                    public void setAfterSaleGrade(String afterSaleGrade) {
                        this.afterSaleGrade = afterSaleGrade;
                    }

                    public String getAfterSaleTxt() {
                        return afterSaleTxt;
                    }

                    public void setAfterSaleTxt(String afterSaleTxt) {
                        this.afterSaleTxt = afterSaleTxt;
                    }

                    public int getAvgEfficiencyScore() {
                        return avgEfficiencyScore;
                    }

                    public void setAvgEfficiencyScore(int avgEfficiencyScore) {
                        this.avgEfficiencyScore = avgEfficiencyScore;
                    }

                    public int getShopId() {
                        return shopId;
                    }

                    public void setShopId(int shopId) {
                        this.shopId = shopId;
                    }

                    public int getPromotionNum() {
                        return promotionNum;
                    }

                    public void setPromotionNum(int promotionNum) {
                        this.promotionNum = promotionNum;
                    }

                    public String getShopStarTxt() {
                        return shopStarTxt;
                    }

                    public void setShopStarTxt(String shopStarTxt) {
                        this.shopStarTxt = shopStarTxt;
                    }

                    public String getSquareLogo() {
                        return squareLogo;
                    }

                    public void setSquareLogo(String squareLogo) {
                        this.squareLogo = squareLogo;
                    }

                    public String getShopStateText() {
                        return shopStateText;
                    }

                    public void setShopStateText(String shopStateText) {
                        this.shopStateText = shopStateText;
                    }

                    public int getCateGoodShop() {
                        return cateGoodShop;
                    }

                    public void setCateGoodShop(int cateGoodShop) {
                        this.cateGoodShop = cateGoodShop;
                    }

                    public String getFollowText() {
                        return followText;
                    }

                    public void setFollowText(String followText) {
                        this.followText = followText;
                    }
 

                    public String getServerText() {
                        return serverText;
                    }

                    public void setServerText(String serverText) {
                        this.serverText = serverText;
                    }

                    public int getCardType() {
                        return cardType;
                    }

                    public void setCardType(int cardType) {
                        this.cardType = cardType;
                    }

                    public String getAfterSaleScore() {
                        return afterSaleScore;
                    }

                    public void setAfterSaleScore(String afterSaleScore) {
                        this.afterSaleScore = afterSaleScore;
                    }

                    public String getScoreRankRateGrade() {
                        return scoreRankRateGrade;
                    }

                    public void setScoreRankRateGrade(String scoreRankRateGrade) {
                        this.scoreRankRateGrade = scoreRankRateGrade;
                    }

                    public boolean isHasCoupon() {
                        return hasCoupon;
                    }

                    public void setHasCoupon(boolean hasCoupon) {
                        this.hasCoupon = hasCoupon;
                    }

                    public int getAvgServiceScore() {
                        return avgServiceScore;
                    }

                    public void setAvgServiceScore(int avgServiceScore) {
                        this.avgServiceScore = avgServiceScore;
                    }

                    public String getGiftIcon() {
                        return giftIcon;
                    }

                    public void setGiftIcon(String giftIcon) {
                        this.giftIcon = giftIcon;
                    }

                    public int getGlobalGoodShop() {
                        return globalGoodShop;
                    }

                    public void setGlobalGoodShop(int globalGoodShop) {
                        this.globalGoodShop = globalGoodShop;
                    }

                    public int getGoodShop() {
                        return goodShop;
                    }

                    public void setGoodShop(int goodShop) {
                        this.goodShop = goodShop;
                    }

                    public String getHotcatestr() {
                        return hotcatestr;
                    }

                    public void setHotcatestr(String hotcatestr) {
                        this.hotcatestr = hotcatestr;
                    }

                    public String getSignboardUrl() {
                        return signboardUrl;
                    }

                    public void setSignboardUrl(String signboardUrl) {
                        this.signboardUrl = signboardUrl;
                    }

                    public String getLogisticsScore() {
                        return logisticsScore;
                    }

                    public void setLogisticsScore(String logisticsScore) {
                        this.logisticsScore = logisticsScore;
                    }

                    public String getLogisticsTxt() {
                        return logisticsTxt;
                    }

                    public void setLogisticsTxt(String logisticsTxt) {
                        this.logisticsTxt = logisticsTxt;
                    }

                    public String getEvaluateTxt() {
                        return evaluateTxt;
                    }

                    public void setEvaluateTxt(String evaluateTxt) {
                        this.evaluateTxt = evaluateTxt;
                    }

                    public boolean isIsSquareLogo() {
                        return isSquareLogo;
                    }

                    public void setIsSquareLogo(boolean isSquareLogo) {
                        this.isSquareLogo = isSquareLogo;
                    }

                    public boolean isDiamond() {
                        return diamond;
                    }

                    public void setDiamond(boolean diamond) {
                        this.diamond = diamond;
                    }

                    public String getName() {
                        return name;
                    }

                    public void setName(String name) {
                        this.name = name;
                    }

                    public String getEvaluateScore() {
                        return evaluateScore;
                    }

                    public void setEvaluateScore(String evaluateScore) {
                        this.evaluateScore = evaluateScore;
                    }

                    public int getServiceScore() {
                        return serviceScore;
                    }

                    public void setServiceScore(int serviceScore) {
                        this.serviceScore = serviceScore;
                    }

                    public String getLogo() {
                        return logo;
                    }

                    public void setLogo(String logo) {
                        this.logo = logo;
                    }

                    public String getLogisticsText() {
                        return logisticsText;
                    }

                    public void setLogisticsText(String logisticsText) {
                        this.logisticsText = logisticsText;
                    }

                    public int getAvgWareScore() {
                        return avgWareScore;
                    }

                    public void setAvgWareScore(int avgWareScore) {
                        this.avgWareScore = avgWareScore;
                    }

                    public String getEvaluateGrade() {
                        return evaluateGrade;
                    }

                    public void setEvaluateGrade(String evaluateGrade) {
                        this.evaluateGrade = evaluateGrade;
                    }

                    public String getNameB() {
                        return nameB;
                    }

                    public void setNameB(String nameB) {
                        this.nameB = nameB;
                    }

                    public int getTotalNum() {
                        return totalNum;
                    }

                    public void setTotalNum(int totalNum) {
                        this.totalNum = totalNum;
                    }

                    public int getNewNum() {
                        return newNum;
                    }

                    public void setNewNum(int newNum) {
                        this.newNum = newNum;
                    }

                    public String getLogisticsGrade() {
                        return logisticsGrade;
                    }

                    public void setLogisticsGrade(String logisticsGrade) {
                        this.logisticsGrade = logisticsGrade;
                    }

                    public String getVenderType() {
                        return venderType;
                    }

                    public void setVenderType(String venderType) {
                        this.venderType = venderType;
                    }

                    public String getShopImage() {
                        return shopImage;
                    }

                    public void setShopImage(String shopImage) {
                        this.shopImage = shopImage;
                    }

                    public String getSkuCntText() {
                        return skuCntText;
                    }

                    public void setSkuCntText(String skuCntText) {
                        this.skuCntText = skuCntText;
                    }

                    public String getScoreText() {
                        return scoreText;
                    }

                    public void setScoreText(String scoreText) {
                        this.scoreText = scoreText;
                    }

                    public String getTelephone() {
                        return telephone;
                    }

                    public void setTelephone(String telephone) {
                        this.telephone = telephone;
                    }

                    public int getWareScore() {
                        return wareScore;
                    }

                    public void setWareScore(int wareScore) {
                        this.wareScore = wareScore;
                    }

                    public String getBrief() {
                        return brief;
                    }

                    public void setBrief(String brief) {
                        this.brief = brief;
                    }

                    public List<PromotionsBean> getPromotions() {
                        return promotions;
                    }

                    public void setPromotions(List<PromotionsBean> promotions) {
                        this.promotions = promotions;
                    }

                    public List<HotcatesBean> getHotcates() {
                        return hotcates;
                    }

                    public void setHotcates(List<HotcatesBean> hotcates) {
                        this.hotcates = hotcates;
                    }

                    public static class PromotionsBean {
                        /**
                         * name : 限时秒杀
                         * class : com.jd.app.server.warecoresoa.domain.shop.ShopPromotion
                         * url : openApp.jdMobile://virtual?params={"category":"jump","des":"jshopMain","jumpTab":"activity","shopId":"649114","venderId":"653506","shopName":"掌视界数码旗舰店","logoUrl":"https://img14.360buyimg.com/cms/jfs/t1/66539/30/16580/13717/5de0c537Eabace8dc/ed81cf4d6e60b058.jpg","signboardUrl":"https://img10.360buyimg.com/cms/jfs/t25471/240/629706860/122523/190166d4/5b7551c8N9c8a0a0b.jpg","activityTabInfo":{"sort":"secKillPage"},"source":{"moduleId":"app-productDetail","entrance":"商详卡片"}}
                         */

                        private String name;
                        private String url;

                    }

                    public static class HotcatesBean {
                        /**
                         * commendSkuId : 59724611000
                         * imgPath : https://m.360buyimg.com/n1/jfs/t1/50963/31/15230/139217/5dc243daEcca20fd5/84f00375455b2221.jpg
                         * class : com.jd.app.server.warecoresoa.domain.shop.ShopHotCate
                         * cid : 10593729
                         * cname : 爆款专区
                         */

                        private long commendSkuId;
                        private String imgPath;
                        private int cid;
                        private String cname;

                    }
                }
            }

            public static class SuitBean {
                /**
                 * mainSkuPicUrl : jfs/t1/86172/23/15312/132452/5e6e1185E709e5398/0f1eff851a27b570.jpg!q70.jpg.webp
                 * suitMark : tab_var_071
                 * mainSkuId : 100009177424
                 * itemList : [{"originalSuitType":0,"packListPrice":"¥5078.80","packId":50057800807,"productList":[{"skuPicUrl":"jfs/t1/103960/30/8248/518904/5e04486fE7283b55d/8a84abd2f298938e.jpg!q70.jpg.webp","name":"mate30/5G通用【蓝光】","skuId":100008355264,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30钢化膜mate30 5G版手机全屏覆盖保护膜huawei曲面热弯玻璃抗蓝光全包无白边抗指纹贴膜por"},{"skuPicUrl":"jfs/t1/104547/36/9304/383360/5e0d5787E1877fa82/372ba171b505bb2a.jpg!q70.jpg.webp","name":"Mate30【裸机手感】魔力黑","skuId":100008712968,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30手机壳mate30 5g版手机防摔全包边保护套hauwei超薄磨砂防指纹个性创意简约潮牌女男款硬壳"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5069.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5049.90","packId":50057801370,"productList":[{"skuPicUrl":"jfs/t1/78089/30/11037/1187793/5d85fd64E91cc65c1/e48dd32c1645dc01.png!q70.jpg.webp","name":"超薄-硅胶防摔软壳-透明 Mate 30/Mate 30 5G通用","skuId":100004422029,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"莜茉YOMO 华为Mate30手机壳 mate30保护套5G手机通用 超薄硅胶全包外壳/TPU抗指纹透明防摔软壳 清透白"},{"skuPicUrl":"jfs/t1/94128/36/6972/747063/5df832bdE5645575c/c895faad4e61521d.jpg!q70.jpg.webp","name":"【Mate30/30 5G】全屏无白边膜","skuId":100007652542,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"莜茉YOMO 华为Mate30钢化膜 mate30手机膜5G手机通用 全屏覆盖无白边淡化指纹高清防爆玻璃膜-黑【2片装】"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5036.50","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5087.00","packId":50057801561,"productList":[{"skuPicUrl":"jfs/t1/96600/15/8350/251519/5e046f8fE6f31980c/30fd4d058f6a577c.jpg!q70.jpg.webp","name":"【全屏高清水晶膜】Mate30","skuId":100008619614,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"邦克仕(Benks)华为Mate30 5G钢化膜 Mate30全屏覆盖手机贴膜 高清耐刮防爆防摔防指纹手机膜 高清膜"},{"skuPicUrl":"jfs/t1/46814/33/14674/125496/5dba734dEdfeded06/8058e9b342fa9d7c.jpg!q70.jpg.webp","name":"Mate30/5G【黑色】硅胶壳","skuId":100008796302,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"邦克仕(Benks)华为Mate30 5G手机壳 HUAWEI Mate 30手机保护套 超薄液态硅胶耐磨防摔软壳 黑色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5066.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5079.00","packId":50057801566,"productList":[{"skuPicUrl":"jfs/t1/108474/15/2874/646076/5e0b1018E7aefc0e9/5b3517a64608ef57.jpg!q70.jpg.webp","name":"新一代工艺 mate30/5G通用【全屏】","skuId":100007469650,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"【钻石膜】瓦力 华为mate30钢化膜 华为Mate30 5G全屏覆盖钢化膜高清手机保护膜 黑色"},{"skuPicUrl":"jfs/t1/100887/36/2137/328869/5dcbdfdaE28ab49fb/d5e9628b45526063.jpg!q70.jpg.webp","name":"纤薄如初&还原裸机 Mate30","skuId":100007652938,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"瓦力（VALEA）华为mate30手机壳5g/4g版通用保护套 mate30轻薄手机套磨砂防摔软壳  黑色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5060.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5122.90","packId":50057802118,"productList":[{"skuPicUrl":"jfs/t1/43827/36/15928/524224/5d89cc17E11b81ea9/898c1be30ec093a4.jpg!q70.jpg.webp","name":"黑色","skuId":100008619582,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"华为 HUAWEI Mate 30 硅胶保护壳 黑色"},{"skuPicUrl":"jfs/t1/46960/15/14819/243442/5dbe82b0Ed0cd9dad/d2f1310ce5bcff69.jpg!q70.jpg.webp","name":"【Mate30/30 5G通用】全屏","skuId":100007816820,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"中陌（zigmog）华为Mate30钢化膜 Mate30 高清手机贴膜 曲面全屏覆盖玻璃 防爆防指纹保护膜 自动贴附"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5082.90","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5038.90","packId":50057803047,"productList":[{"skuPicUrl":"jfs/t1/46538/34/2726/698474/5d08edc7E6a257e94/2990ee0f56067c5c.jpg!q70.jpg.webp","name":"22.5W快充头+5A数据线[快充套装] 白色","skuId":100005745512,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"乔威 华为22.5W充电器头 5A超级快充+5AType-c数据线充电套装  用于安卓/华为/荣耀/小米 白色"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5033.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5083.90","packId":50057803116,"productList":[{"skuPicUrl":"jfs/t1/52197/38/16357/150774/5dd625e2E4b7ae2ba/82d08e3c2fcf2a37.jpg!q70.jpg.webp","name":"华为SuperCharge【5A闪充线】1米","skuId":6468018,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"绿联 Type-C数据线5A超级快充 通用华为Mate30/20/P30pro/nova5/荣耀/小米8/9手机充电线安卓USB-C转接头1米"},{"skuPicUrl":"jfs/t1/106634/14/1649/526717/5dc29280Eb0ac1c04/be2ec2fc3b0edce6.jpg!q70.jpg.webp","name":"华为超级快充22.5W充电头","skuId":100006961440,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"绿联 5A超级快充 22.5W充电器通用华为Mate30/20/P20/P30Pro荣耀10/V20手机4.5V/5A闪充插头 兼容QC/FCP50548"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5071.70","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5118.00","packId":50057803503,"productList":[{"skuPicUrl":"jfs/t1/64032/7/16706/273344/5de1010fEf37a730f/c73085e04b62950c.jpg!q70.jpg.webp","name":"【22.5w双向快充】2万毫安","skuId":100009743866,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"罗马仕 ROMOSS PSW20PF 华为充电宝移动电源20000毫安时22.5W大容量PD双向快充适用于苹果小米安卓"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5094.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5028.00","packId":50057804452,"productList":[{"skuPicUrl":"jfs/t1/98062/39/14371/291698/5e65c488Ea488f52b/31e8c948c5299f21.jpg!q70.jpg.webp","name":"5A支持华为快充-白-1米","skuId":100006610876,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"飞利浦 Type-C数据线 5A超级快充手机充电线 安卓USB-C转接头充电器支持小米8/9/华为P30/Mate10/20 1米1612A"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5020.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5098.00","packId":50057804494,"productList":[{"skuPicUrl":"jfs/t1/45177/15/13230/349040/5da177fcEa89d1ce7/c6ea85b16a94ec77.jpg!q70.jpg.webp","name":"性价比版(多功能/三脚架)","skuId":100005906650,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"飞利浦 三脚架无线自拍杆 蓝牙遥控 迷你便携 短视频/直播支架 360°旋转 安卓/苹果手机通用 DLK3617N"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5075.00","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5053.90","packId":50065667998,"productList":[{"skuPicUrl":"jfs/t1/42989/10/14719/330864/5d79a363Eb33e4a02/292577f6d4a9f747.jpg!q70.jpg.webp","name":"防指纹黑色 mate30/mate30 5G通用","skuId":100007696272,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"KOOLIFE 华为MATE30手机壳 华为mate30 5G玻璃款保护套 无边框个性超薄磨砂男女时尚外壳 裸机手感-黑色"},{"skuPicUrl":"jfs/t1/50183/17/11466/579139/5d88687aEe94136c5/79411486cbf6a8a1.jpg!q70.jpg.webp","name":"mate30/mate30 5G通用 手机贴膜","skuId":100004444055,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"KOOLIFE 华为mate30非钢化膜 华为MATE30 5G水凝膜 全覆盖膜手机保护膜2片装 高透前膜-透明"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5042.90","packName":"Discount package"},{"originalSuitType":0,"packListPrice":"¥5028.00","packId":200000168114,"productList":[{"skuPicUrl":"jfs/t1/91859/11/13229/593424/5e535a0fE14641f42/71eb4d1a8384dfe7.jpg!q70.jpg.webp","name":"【指纹解锁、四层防水】-陨石黑","skuId":100005295242,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"毕亚兹 手机防水袋 户外游泳防水包潜水套外卖快递触屏多功能大号密封袋手机通用型升级版挂绳款JK753-陨石黑"}],"packType":"0","class":"com.jd.app.server.warecoresoa.domain.suit.SuitItem","packPrice":"¥5025.00","packName":"Discount package"}]
                 * domain : https://m.360buyimg.com/n3/
                 * suitNumText : 该商品共有12个优惠套装
                 * class : com.jd.app.server.warecoresoa.domain.suit.SuitInfo
                 * discountMark : tab_var_071
                 * mainSkuName : 华为 HUAWEI Mate 30 5G 麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB亮黑色5G全网通游戏手机
                 */

                private String mainSkuPicUrl;
                private String suitMark;
                private long mainSkuId;
                private String domain;
                private String suitNumText;
                 
                private String classXYZ;
                private String discountMark;
                private String mainSkuName;
                private List<ItemListBean> itemList;

                public String getMainSkuPicUrl() {
                    return mainSkuPicUrl;
                }

                public void setMainSkuPicUrl(String mainSkuPicUrl) {
                    this.mainSkuPicUrl = mainSkuPicUrl;
                }

                public String getSuitMark() {
                    return suitMark;
                }

                public void setSuitMark(String suitMark) {
                    this.suitMark = suitMark;
                }

                public long getMainSkuId() {
                    return mainSkuId;
                }

                public void setMainSkuId(long mainSkuId) {
                    this.mainSkuId = mainSkuId;
                }

                public String getDomain() {
                    return domain;
                }

                public void setDomain(String domain) {
                    this.domain = domain;
                }

                public String getSuitNumText() {
                    return suitNumText;
                }

                public void setSuitNumText(String suitNumText) {
                    this.suitNumText = suitNumText;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public String getDiscountMark() {
                    return discountMark;
                }

                public void setDiscountMark(String discountMark) {
                    this.discountMark = discountMark;
                }

                public String getMainSkuName() {
                    return mainSkuName;
                }

                public void setMainSkuName(String mainSkuName) {
                    this.mainSkuName = mainSkuName;
                }

                public List<ItemListBean> getItemList() {
                    return itemList;
                }

                public void setItemList(List<ItemListBean> itemList) {
                    this.itemList = itemList;
                }

                public static class ItemListBean {
                    /**
                     * originalSuitType : 0
                     * packListPrice : ¥5078.80
                     * packId : 50057800807
                     * productList : [{"skuPicUrl":"jfs/t1/103960/30/8248/518904/5e04486fE7283b55d/8a84abd2f298938e.jpg!q70.jpg.webp","name":"mate30/5G通用【蓝光】","skuId":100008355264,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30钢化膜mate30 5G版手机全屏覆盖保护膜huawei曲面热弯玻璃抗蓝光全包无白边抗指纹贴膜por"},{"skuPicUrl":"jfs/t1/104547/36/9304/383360/5e0d5787E1877fa82/372ba171b505bb2a.jpg!q70.jpg.webp","name":"Mate30【裸机手感】魔力黑","skuId":100008712968,"class":"com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem","skuName":"插画师 华为mate30手机壳mate30 5g版手机防摔全包边保护套hauwei超薄磨砂防指纹个性创意简约潮牌女男款硬壳"}]
                     * packType : 0
                     * class : com.jd.app.server.warecoresoa.domain.suit.SuitItem
                     * packPrice : ¥5069.00
                     * packName : Discount package
                     */

                    private int originalSuitType;
                    private String packListPrice;
                    private long packId;
                    private String packType;
                     
                    private String classXYZ;
                    private String packPrice;
                    private String packName;
                    private List<ProductListBean> productList;

                    public int getOriginalSuitType() {
                        return originalSuitType;
                    }

                    public void setOriginalSuitType(int originalSuitType) {
                        this.originalSuitType = originalSuitType;
                    }

                    public String getPackListPrice() {
                        return packListPrice;
                    }

                    public void setPackListPrice(String packListPrice) {
                        this.packListPrice = packListPrice;
                    }

                    public long getPackId() {
                        return packId;
                    }

                    public void setPackId(long packId) {
                        this.packId = packId;
                    }

                    public String getPackType() {
                        return packType;
                    }

                    public void setPackType(String packType) {
                        this.packType = packType;
                    }

                    public String getclassXYZ() {
                        return classXYZ;
                    }

                    public void setclassXYZ(String classXYZ) {
                        this.classXYZ = classXYZ;
                    }

                    public String getPackPrice() {
                        return packPrice;
                    }

                    public void setPackPrice(String packPrice) {
                        this.packPrice = packPrice;
                    }

                    public String getPackName() {
                        return packName;
                    }

                    public void setPackName(String packName) {
                        this.packName = packName;
                    }

                    public List<ProductListBean> getProductList() {
                        return productList;
                    }

                    public void setProductList(List<ProductListBean> productList) {
                        this.productList = productList;
                    }

                    public static class ProductListBean {
                        /**
                         * skuPicUrl : jfs/t1/103960/30/8248/518904/5e04486fE7283b55d/8a84abd2f298938e.jpg!q70.jpg.webp
                         * name : mate30/5G通用【蓝光】
                         * skuId : 100008355264
                         * class : com.jd.app.server.warecoresoa.domain.suit.SuitSkuItem
                         * skuName : 插画师 华为mate30钢化膜mate30 5G版手机全屏覆盖保护膜huawei曲面热弯玻璃抗蓝光全包无白边抗指纹贴膜por
                         */

                        private String skuPicUrl;
                        private String name;
                        private long skuId;
                         
                        private String classXYZ;
                        private String skuName;

                        public String getSkuPicUrl() {
                            return skuPicUrl;
                        }

                        public void setSkuPicUrl(String skuPicUrl) {
                            this.skuPicUrl = skuPicUrl;
                        }

                        public String getName() {
                            return name;
                        }

                        public void setName(String name) {
                            this.name = name;
                        }

                        public long getSkuId() {
                            return skuId;
                        }

                        public void setSkuId(long skuId) {
                            this.skuId = skuId;
                        }

                        public String getclassXYZ() {
                            return classXYZ;
                        }

                        public void setclassXYZ(String classXYZ) {
                            this.classXYZ = classXYZ;
                        }

                        public String getSkuName() {
                            return skuName;
                        }

                        public void setSkuName(String skuName) {
                            this.skuName = skuName;
                        }
                    }
                }
            }

            public static class PromotionInfoBean {
                /**
                 * isBargain : false
                 * prompt : 1;2
                 */

                private boolean isBargain;
                private String prompt;

                public boolean isIsBargain() {
                    return isBargain;
                }

                public void setIsBargain(boolean isBargain) {
                    this.isBargain = isBargain;
                }

                public String getPrompt() {
                    return prompt;
                }

                public void setPrompt(String prompt) {
                    this.prompt = prompt;
                }
            }

            public static class WeightInfoBean {
                /**
                 * content : 0.6kg
                 * class : com.jd.app.server.warecoresoa.domain.stock.WeightFareInfo$WeightInfo
                 * title : 重量
                 */

                private String content;
                 
                private String classXYZ;
                private String title;

                public String getContent() {
                    return content;
                }

                public void setContent(String content) {
                    this.content = content;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public String getTitle() {
                    return title;
                }

                public void setTitle(String title) {
                    this.title = title;
                }
            }

            public static class FlashInfoBean {
                /**
                 * state : 0
                 * class : com.jd.app.server.warecoresoa.domain.flash.FlashInfo
                 * cd : 0
                 */

                private int state;
                 
                private String classXYZ;
                private int cd;

                public int getState() {
                    return state;
                }

                public void setState(int state) {
                    this.state = state;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public int getCd() {
                    return cd;
                }

                public void setCd(int cd) {
                    this.cd = cd;
                }
            }

            public static class CccKernelBean {
                /**
                 * icon : https://m.360buyimg.com/cc/jfs/t18391/185/1623415222/894/e4f01bb5/5ad09367N6054a929.png
                 * class : com.jd.app.server.warecoresoa.domain.vo.ThreeCKernelInfo
                 * paramValue : 2019年11月
                 * paramName : 上市时间
                 */

                private String icon;
                private String paramValue;
                private String paramName;

            }

            public static class ServIconRelationBean {
                /**
                 * iconValue : detail_006
                 * class : com.jd.app.server.warecoresoa.domain.icon.ServIconRelation
                 * iconType : exclamation
                 */

                private String iconValue;
                 
                private String classXYZ;
                private String iconType;

                public String getIconValue() {
                    return iconValue;
                }

                public void setIconValue(String iconValue) {
                    this.iconValue = iconValue;
                }

                public String getclassXYZ() {
                    return classXYZ;
                }

                public void setclassXYZ(String classXYZ) {
                    this.classXYZ = classXYZ;
                }

                public String getIconType() {
                    return iconType;
                }

                public void setIconType(String iconType) {
                    this.iconType = iconType;
                }
            }

            public static class BizListBean {
                /**
                 * icon : https://m.360buyimg.com/cc/jfs/t8746/206/1817663053/1477/344350f9/59bfa60fNd6d66c7c.png
                 * title : 手机靓号
                 * desc : 全国流量不限量
                 * mustLogin : false
                 * bizKey : redCard
                 * type : 1
                 * url : https://pro.m.jd.com/mall/active/37KLd8my2W19ekZLTHsz5WvEx7uu/index.html
                 * jumpData : {"bizType":2}
                 */

                private String icon;
                private String title;
                private String desc;
                private boolean mustLogin;
                private String bizKey;
                private int type;
                private String url;
                private JumpDataBean jumpData;

                public String getIcon() {
                    return icon;
                }

                public void setIcon(String icon) {
                    this.icon = icon;
                }

                public String getTitle() {
                    return title;
                }

                public void setTitle(String title) {
                    this.title = title;
                }

                public String getDesc() {
                    return desc;
                }

                public void setDesc(String desc) {
                    this.desc = desc;
                }

                public boolean isMustLogin() {
                    return mustLogin;
                }

                public void setMustLogin(boolean mustLogin) {
                    this.mustLogin = mustLogin;
                }

                public String getBizKey() {
                    return bizKey;
                }

                public void setBizKey(String bizKey) {
                    this.bizKey = bizKey;
                }

                public int getType() {
                    return type;
                }

                public void setType(int type) {
                    this.type = type;
                }

                public String getUrl() {
                    return url;
                }

                public void setUrl(String url) {
                    this.url = url;
                }

                public JumpDataBean getJumpData() {
                    return jumpData;
                }

                public void setJumpData(JumpDataBean jumpData) {
                    this.jumpData = jumpData;
                }

                public static class JumpDataBean {
                    /**
                     * bizType : 2
                     */

                    private int bizType;

                }
            }

            public static class ImgInfoBean {
                /**
                 * imgUrl : https://img12.360buyimg.com/img/jfs/t1/35794/7/2043/7048/5cb9ce74Eabf015ac/37b91e86245190d6.png
                 * imgJumpUrl : https://3c-peijian.jd.com/index?cid=655&sku=59788201255&source=itemDetail&accyCategoryId=10
                 * imgJumpType : 1
                 * imgText : 移动电源
                 */

                private String imgUrl;
                private String imgJumpUrl;
                private int imgJumpType;
                private String imgText;

                public String getImgUrl() {
                    return imgUrl;
                }

                public void setImgUrl(String imgUrl) {
                    this.imgUrl = imgUrl;
                }

                public String getImgJumpUrl() {
                    return imgJumpUrl;
                }

                public void setImgJumpUrl(String imgJumpUrl) {
                    this.imgJumpUrl = imgJumpUrl;
                }

                public int getImgJumpType() {
                    return imgJumpType;
                }

                public void setImgJumpType(int imgJumpType) {
                    this.imgJumpType = imgJumpType;
                }

                public String getImgText() {
                    return imgText;
                }

                public void setImgText(String imgText) {
                    this.imgText = imgText;
                }
            }

            public static class WareImageBean {
                /**
                 * share : https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.jpg
                 * big : https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp
                 * small : https://m.360buyimg.com/mobilecms/s800x800_jfs/t1/100445/7/1596/135195/5dc243d9Ebe030de2/0a995191fd2d3958.jpg!q70.dpg.webp
                 */

                private String share;
                private String big;
                private String small;
            }
        }
    }
}
