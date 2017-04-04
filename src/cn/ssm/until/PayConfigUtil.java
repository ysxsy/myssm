package cn.ssm.until;


public class PayConfigUtil {  
	//这个就是自己要保管好的私有Key了（切记只能放在自己的后台代码里，不能放在任何可能被看到源代码的客户端程序中）  
	    // 每次自己Post数据给API的时候都要用这个key来对所有字段进行签名，生成的签名会放在Sign这个字段，API收到Post数据的时候也会用同样的签名算法对Post过来的数据进行签名和验证  
	    // 收到API的返回的时候也要用这个key来对返回的数据算下签名，跟API的Sign数据进行比较，如果值不一致，有可能数据被第三方给篡改  
	  
	    private static String key = "BUl55muxuxEPRAw0JQDJtlErdF2fow8j";  
	  
	    //微信分配的公众号ID（开通公众号之后可以获取到）  
	    private static String appID = "wxe70f30b623d7dc48";  
	  
	    //微信支付分配的商户号ID（开通公众号的微信支付功能之后可以获取到）  
	    private static String mchID = "1418386002";
	  
	  
	  
	    //机器IP  
	    private static String ip = "127.0.0.1";  
	  
	    //以下是几个API的路径：  
	    //1）被扫支付API  
	    //public static String PAY_API = "https://api.mch.weixin.qq.com/pay/micropay";  
	    public static String PAY_API = "https://api.mch.weixin.qq.com/pay/unifiedorder";  
	    //2）被扫支付查询API  
	    public static String PAY_QUERY_API = "https://api.mch.weixin.qq.com/pay/orderquery";  
	  
	    //3）退款API  
	    public static String REFUND_API = "https://api.mch.weixin.qq.com/secapi/pay/refund";  
	  
	    //4）退款查询API  
	    public static String REFUND_QUERY_API = "https://api.mch.weixin.qq.com/pay/refundquery";  
	  
	    //5）撤销API  
	    public static String REVERSE_API = "https://api.mch.weixin.qq.com/secapi/pay/reverse";  
	  
	    //6）下载对账单API  
	    public static String DOWNLOAD_BILL_API = "https://api.mch.weixin.qq.com/pay/downloadbill";  
	  
	    //7) 统计上报API  
	    public static String REPORT_API = "https://api.mch.weixin.qq.com/payitil/report";  
	      
	    //回调地址  
	    //public static String NOTIFY_URL = ""; //测试  
	    public static String NOTIFY_URL = "htttp://www.baidu.com";
	  
	    public static String HttpsRequestClassName = "com.entplus.wxpay.util.HttpsRequest";  
	  
	    public static void setKey(String key) {  
	        PayConfigUtil.key = key;  
	    }  
	  
	    public static void setAppID(String appID) {  
	        PayConfigUtil.appID = appID;  
	    }  
	  
	    public static void setMchID(String mchID) {  
	        PayConfigUtil.mchID = mchID;  
	    }  
	  
	    public static void setIp(String ip) {  
	        PayConfigUtil.ip = ip;  
	    }  
	  
	    public static String getKey(){  
	        return key;  
	    }  
	      
	    public static String getAppid(){  
	        return appID;  
	    }  
	      
	    public static String getMchid(){  
	        return mchID;  
	    }  
	  
	  
	  
	    public static String getIP(){  
	        return ip;  
	    }  
	  
	    public static void setHttpsRequestClassName(String name){  
	        HttpsRequestClassName = name;  
	    }  
	  
	}  
