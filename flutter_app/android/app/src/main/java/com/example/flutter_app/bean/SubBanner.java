package com.example.flutter_app.bean;

import java.util.List;

class SubBanner {
    /**
     * code : 0
     * styleTypeBanner : 2
     * clientCacheTime2 : 24
     * clientCacheTime3 : 24
     * clientCacheTime1 : 24
     * clientCacheTimeFreq : 1
     * testId3 : ABTest-10076-&ABTest-10051-
     * bannerFrames : 4
     * testId4 : ABTest-10073-&ABTest-10051-
     * testId1 : ABTest-10074-&ABTest-10051-
     * testId2 : ABTest-10075-&ABTest-10051-
     * cmsPromotionsList : [{"promotion_id":140,"catelogyId":-1,"promotion_name":"京东超级品牌日","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1/115645/20/10562/231219/5eec952dEe845eb19/a8d652ea9a7a6d79.jpg.webp","imageUrl_wap":"","mPageAddress":"https://h5.m.jd.com/babelDiy/Zeus/3a9Q8JhSik8yfwwjai9WWaessRZt/index.html","target":"","promotionLogUrl":"","destination":"","jumpFlag":"0"},{"promotion_id":4202,"catelogyId":-1,"promotion_name":"促销活动图","imageUrl":"https://img1.360buyimg.com/da/jfs/t1/113349/22/6253/302031/5eb85e90Eef71cf39/fec9408b477d0348.jpg!q50!cr_1125x584_0_89.webp","mPageAddress":"https://pro.m.jd.com/mall/active/job65pMdrU5DWwxtWdZQ8CZgDbW/index.html","promotionLogUrl":"http://ccc-x.jd.local/dsp/nc?ext=aHR0cHM6Ly9wcm8ubS5qZC5jb20vbWFsbC9hY3RpdmUvam9iNjVwTWRyVTVEV3d4dFdkWlE4Q1pnRGJXL2luZGV4Lmh0bWw&log=ckZaBxFDAtoIXeGxJVFbbruQpsMA4WydaWXFaPkczmYY37M8YY3VYn8GwgFPIB7xMZsSqSG8jvm7uncHicpVRO-38pse-mgi-RiRvaNRIqtaxsI3V_vKG0A9QBEZP0ObsiQHiVBs9vG_xJABMMVtW1h-FuqHIHUhKfl0oG8PVEru3PO7gNay5RhPs8H0_I34vAgyeorg_PFFBOtzFRpiCe5F7eHP-9fnZtamOPK2gpHd1LYfkyFAUDNz_QJxxHvIJyEyEEeo8k8HJj1Cvu0R6HrR9GSeafV0H8lo-yN6rHxAb4weyh5H4g59QCRqVkEpoMevwgWeskqZUL_0_zrN-eYdYj5NliPoadmt-_qxLIXnbskOX6HOK-Ky5ptwcQESNYbGB4ACwLuBKlqjnvRdR57uQp_N_lFPHiPbIVrY_wJWLLkPhVvVNJ44u-hPRYmwDy9oPKkd8ZvbN5vW3eFsJwleULjgKZNBpKwr8AcfN2SfHiAU64cg9TpszJhkooFc_qACgaMclIw7ETOs8N8p6xBcQuCjko-J212mERGrQbYmNwNfDRSc_ARlJCjO2-A600tI3ORUSTgYCRWJkJiQWw4udDCkxyb5GAHTWpC9YNzygbrblmu4rM1OnXfvTf23wDrJqfhkYv1TJa7vtR1sXgsgxr-XYl2H1IfIQUe8HGms0ie9sTYaEE43JQeNZ8oAbyNFZI1dcZPXB4CVkAbIjvk36_lgHc86-SCPfxdpnTN-2FinBBL8awv6dGGYp4_Ux_Qr4wSiNZtjKYYaPPoHqUe5CscT4siiOY7gFGQsQ4087IWVTjB8QN9VFlCN2hHChiCoVw3DOJOEwOjmCQLm3RjSMn61U0EKdD6YPbsLjY1qavYc4zypY2rV7QxSOdRt&v=404&clicktype=1","extension_id":"{\"ad\":\"4202\",\"ch\":\"2\",\"shop\":\"112540\",\"ts\":\"1593162179\",\"uniqid\":\"{\\\"material_id\\\":\\\"1481058973\\\",\\\"pos_id\\\":\\\"4202\\\",\\\"sid\\\":\\\"05fc857c-af52-4b8f-9ac9-344d0ff02901\\\"}\"}","exposalUrl":"https://im-x.jd.com/dsp/np?log=ckZaBxFDAtoIXeGxJVFbbruQpsMA4WydaWXFaPkczmYY37M8YY3VYn8GwgFPIB7xMZsSqSG8jvm7uncHicpVRO-38pse-mgi-RiRvaNRIqtaxsI3V_vKG0A9QBEZP0ObsiQHiVBs9vG_xJABMMVtW1h-FuqHIHUhKfl0oG8PVEru3PO7gNay5RhPs8H0_I34vAgyeorg_PFFBOtzFRpiCe5F7eHP-9fnZtamOPK2gpEDa5Woj1pkagbNoRUgmPwuThcQ9y8JzZPAagt_TQnbB4UYB1lTMgn2lFxh0kA4i8hYUjgYD03gVny1cggByleF8kSOGpvZMOxUQPzJ20RkIvkzL7KVzJyqSYSf9eZALWEvwH_D3gZpVRC8ZIzKf5sdkMT0i-PcvquTbe4AmI_QHKmKGiUacWRBzSskgA0od7e1apTT1Udqr20V7EXAmRQtihYHOB7xIbJmpTzYw6lRlVKCRrAXJdTMNogNWUNYQ1MZjkGZheX3Y3E5rV-d5pwMqTAovhB5-UskgaUxazLZIhPwKPUIxKpXO96bBI4Qq4R64KPyb6tFKDAeP_AucuNdM_q3ga571neqisrx17G1qrKQKon1xxk0hwF84w_daPNas3LhlcWIuSDwkvqiDpBCqXJBeZ8E6cqtlpF5PmYajvNSkG1A2tkN8z3Im3t9p1_5liwmCax6ZTfWPCCfLNnm_FQV4JjCr1LT4ZVV-7_dGWs18VLGRRSFz0LnojosGlQo7DWuKFCqkyg8LhVXP3StQ84xNEHaPXTjYGMAtigZMnckuRmAXreUTm4Cp9q8gbA9MM956vomDOiolEXcWHTJHlgiqicTaPfwYXJvk2W6-PuT2hOrughBb8PpMDqh2pUqfbAljp8SCzAO05L3fNMudSCbghznW9DoSVRnIo7nbFp35R8cSMzP768VHoXMJLg&v=404&seq=1&rt=3","type":"ad"},{"promotion_id":99,"catelogyId":-1,"promotion_name":"促销活动图","imageUrl":"https://m.360buyimg.com/mobilecms/jfs/t1/42299/30/12435/38973/5d5bbc4cEfcfb0797/afdda5b5903a5a70.jpg.webp","imageUrl_wap":"","mPageAddress":"https://wqs.jd.com/portal/wx/seckill_m/brand.shtml","target":"","promotionLogUrl":"","destination":"","jumpFlag":"0"}]
     * bannerSource : ads
     * modified : 1556248015000
     * commonCategoryTimestamp : 1593100800016
     * cmsMonthCardList : []
     */

    private String code;
    private String styleTypeBanner;
    private String clientCacheTime2;
    private String clientCacheTime3;
    private String clientCacheTime1;
    private String clientCacheTimeFreq;
    private String testId3;
    private int bannerFrames;
    private String testId4;
    private String testId1;
    private String testId2;
    private String bannerSource;
    private long modified;
    private long commonCategoryTimestamp;
    private List<CmsPromotionsListBean> cmsPromotionsList;
    private List<?> cmsMonthCardList;


    public static class CmsPromotionsListBean {
        /**
         * promotion_id : 140
         * catelogyId : -1
         * promotion_name : 京东超级品牌日
         * imageUrl : https://m.360buyimg.com/mobilecms/jfs/t1/115645/20/10562/231219/5eec952dEe845eb19/a8d652ea9a7a6d79.jpg.webp
         * imageUrl_wap :
         * mPageAddress : https://h5.m.jd.com/babelDiy/Zeus/3a9Q8JhSik8yfwwjai9WWaessRZt/index.html
         * target :
         * promotionLogUrl :
         * destination :
         * jumpFlag : 0
         * extension_id : {"ad":"4202","ch":"2","shop":"112540","ts":"1593162179","uniqid":"{\"material_id\":\"1481058973\",\"pos_id\":\"4202\",\"sid\":\"05fc857c-af52-4b8f-9ac9-344d0ff02901\"}"}
         * exposalUrl : https://im-x.jd.com/dsp/np?log=ckZaBxFDAtoIXeGxJVFbbruQpsMA4WydaWXFaPkczmYY37M8YY3VYn8GwgFPIB7xMZsSqSG8jvm7uncHicpVRO-38pse-mgi-RiRvaNRIqtaxsI3V_vKG0A9QBEZP0ObsiQHiVBs9vG_xJABMMVtW1h-FuqHIHUhKfl0oG8PVEru3PO7gNay5RhPs8H0_I34vAgyeorg_PFFBOtzFRpiCe5F7eHP-9fnZtamOPK2gpEDa5Woj1pkagbNoRUgmPwuThcQ9y8JzZPAagt_TQnbB4UYB1lTMgn2lFxh0kA4i8hYUjgYD03gVny1cggByleF8kSOGpvZMOxUQPzJ20RkIvkzL7KVzJyqSYSf9eZALWEvwH_D3gZpVRC8ZIzKf5sdkMT0i-PcvquTbe4AmI_QHKmKGiUacWRBzSskgA0od7e1apTT1Udqr20V7EXAmRQtihYHOB7xIbJmpTzYw6lRlVKCRrAXJdTMNogNWUNYQ1MZjkGZheX3Y3E5rV-d5pwMqTAovhB5-UskgaUxazLZIhPwKPUIxKpXO96bBI4Qq4R64KPyb6tFKDAeP_AucuNdM_q3ga571neqisrx17G1qrKQKon1xxk0hwF84w_daPNas3LhlcWIuSDwkvqiDpBCqXJBeZ8E6cqtlpF5PmYajvNSkG1A2tkN8z3Im3t9p1_5liwmCax6ZTfWPCCfLNnm_FQV4JjCr1LT4ZVV-7_dGWs18VLGRRSFz0LnojosGlQo7DWuKFCqkyg8LhVXP3StQ84xNEHaPXTjYGMAtigZMnckuRmAXreUTm4Cp9q8gbA9MM956vomDOiolEXcWHTJHlgiqicTaPfwYXJvk2W6-PuT2hOrughBb8PpMDqh2pUqfbAljp8SCzAO05L3fNMudSCbghznW9DoSVRnIo7nbFp35R8cSMzP768VHoXMJLg&v=404&seq=1&rt=3
         * type : ad
         */

        private int promotion_id;
        private int catelogyId;
        private String promotion_name;
        private String imageUrl;
        private String imageUrl_wap;
        private String mPageAddress;
        private String target;
        private String promotionLogUrl;
        private String destination;
        private String jumpFlag;
        private String extension_id;
        private String exposalUrl;
        private String type;

    }
}
