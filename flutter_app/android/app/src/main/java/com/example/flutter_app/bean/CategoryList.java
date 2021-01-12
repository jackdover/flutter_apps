package com.example.flutter_app.bean;

import java.util.List;

class CategoryList {
    /**
     * code : 0
     * catelogyList : [{"level":0,"name":"京东超市","cid":300014703,"isIndividual":false},{"level":0,"name":"国际名牌","cid":300015359,"isIndividual":false},{"level":0,"name":"奢侈品","cid":300015294,"isIndividual":false},{"level":0,"name":"京东国际","cid":300000009,"isIndividual":false},{"level":0,"name":"唯品会","cid":300016515,"isIndividual":false},{"level":0,"name":"男装","cid":100001852,"isIndividual":false},{"level":0,"name":"女装","cid":100001851,"isIndividual":false},{"level":0,"name":"男鞋","cid":300014671,"isIndividual":false},{"level":0,"name":"女鞋","cid":300014674,"isIndividual":false},{"level":0,"name":"内衣配饰","cid":100001957,"isIndividual":false},{"level":0,"name":"箱包手袋","cid":1672,"isIndividual":false},{"level":0,"name":"美妆护肤","cid":1316,"isIndividual":false},{"level":0,"name":"个护清洁","cid":300016242,"isIndividual":false},{"level":0,"name":"钟表珠宝","cid":6144,"isIndividual":false},{"level":0,"name":"手机数码","cid":9987,"isIndividual":false},{"level":0,"name":"电脑办公","cid":670,"isIndividual":false},{"level":0,"name":"家用电器","cid":737,"isIndividual":false},{"level":0,"name":"食品生鲜","cid":1320,"isIndividual":false},{"level":0,"name":"酒水饮料","cid":12259,"isIndividual":false},{"level":0,"name":"母婴童装","cid":1319,"isIndividual":false},{"level":0,"name":"玩具乐器","cid":6233,"isIndividual":false},{"level":0,"name":"医疗保健","cid":9192,"isIndividual":false},{"level":0,"name":"计生情趣","cid":100001958,"isIndividual":false},{"level":0,"name":"运动户外","cid":1318,"isIndividual":false},{"level":0,"name":"汽车生活","cid":6728,"isIndividual":false},{"level":0,"name":"家居厨具","cid":1620,"isIndividual":false},{"level":0,"name":"家具家装","cid":9847,"isIndividual":false},{"level":0,"name":"礼品鲜花","cid":100001560,"isIndividual":false},{"level":0,"name":"宠物生活","cid":300014677,"isIndividual":false},{"level":0,"name":"生活旅行","cid":4938,"isIndividual":false},{"level":0,"name":"图书文娱","cid":300017653,"mergeCatalogs":[{"id":1713,"name":"图书音像","order":1,"level":0},{"id":300015999,"name":"文娱","order":2,"level":0},{"id":13678,"name":"教育","order":3,"level":0},{"id":5272,"name":"电子书","order":4,"level":0}],"showTab":true,"isIndividual":false},{"level":0,"name":"艺术邮币","cid":13887,"isIndividual":false},{"level":0,"name":"农资园艺","cid":12473,"isIndividual":false},{"level":0,"name":"特产馆","cid":300015048,"isIndividual":false},{"level":0,"name":"京东金融","cid":100002201,"isIndividual":false},{"level":0,"name":"拍卖","cid":300014678,"isIndividual":false},{"level":0,"name":"房产","cid":15083,"isIndividual":false},{"level":0,"name":"二手商品","cid":300014870,"isIndividual":false},{"level":0,"name":"京东服务","cid":15980,"isIndividual":false},{"level":0,"name":"工业品","cid":14065,"isIndividual":false}]
     */

    private String code;
    private List<CatelogyListBean> catelogyList;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public List<CatelogyListBean> getCatelogyList() {
        return catelogyList;
    }

    public void setCatelogyList(List<CatelogyListBean> catelogyList) {
        this.catelogyList = catelogyList;
    }

    public static class CatelogyListBean {
        /**
         * level : 0
         * name : 京东超市
         * cid : 300014703
         * isIndividual : false
         * mergeCatalogs : [{"id":1713,"name":"图书音像","order":1,"level":0},{"id":300015999,"name":"文娱","order":2,"level":0},{"id":13678,"name":"教育","order":3,"level":0},{"id":5272,"name":"电子书","order":4,"level":0}]
         * showTab : true
         */

        private int level;
        private String name;
        private int cid;
        private boolean isIndividual;
        private boolean showTab;
        private List<MergeCatalogsBean> mergeCatalogs;

        public int getLevel() {
            return level;
        }

        public void setLevel(int level) {
            this.level = level;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getCid() {
            return cid;
        }

        public void setCid(int cid) {
            this.cid = cid;
        }

        public boolean isIsIndividual() {
            return isIndividual;
        }

        public void setIsIndividual(boolean isIndividual) {
            this.isIndividual = isIndividual;
        }

        public boolean isShowTab() {
            return showTab;
        }

        public void setShowTab(boolean showTab) {
            this.showTab = showTab;
        }

        public List<MergeCatalogsBean> getMergeCatalogs() {
            return mergeCatalogs;
        }

        public void setMergeCatalogs(List<MergeCatalogsBean> mergeCatalogs) {
            this.mergeCatalogs = mergeCatalogs;
        }

        public static class MergeCatalogsBean {
            /**
             * id : 1713
             * name : 图书音像
             * order : 1
             * level : 0
             */

            private int id;
            private String name;
            private int order;
            private int level;

            public int getId() {
                return id;
            }

            public void setId(int id) {
                this.id = id;
            }

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public int getOrder() {
                return order;
            }

            public void setOrder(int order) {
                this.order = order;
            }

            public int getLevel() {
                return level;
            }

            public void setLevel(int level) {
                this.level = level;
            }
        }
    }
}
