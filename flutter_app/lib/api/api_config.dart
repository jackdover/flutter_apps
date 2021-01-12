class ApiConfig {
  // static final String baseUrl = 'http://localhost:3000/';
  static const String baseUrl = 'http://192.168.0.111:3000/';
  // static const String baseUrl = 'http://192.168.50.230:3000/';
  // static final String baseUrl = 'http://yapi.demo.qunar.com/mock/89510/';

  static const String welcomeHome = 'client.action?functionId=welcomeHome';
  static const String wareBusiness = 'client.action?functionId=wareBusiness';
  static const String recommendItemList = 'client.action?functionId=uniformRecommend';
  static const String MasterCategory = 'client.action?functionId=entranceCatalog';
  static const String subcategoryList = 'client.action?functionId=newSubCatalog';
  static const String subCategoryBannerList = 'client.action?functionId=getCmsPromotionsListByCatelogyID';

  static const String personinfoBusiness = 'client.action?functionId=personinfoBusiness';
  static const String shopcart = '/client.action?functionId=cart';
  static const String settings = '/client.action?functionId=myjdSetBusiness';


  static const String action = 'client.action';
  static const String appCenterInfo = 'client.action?functionId=newAppCenterInfo';


}