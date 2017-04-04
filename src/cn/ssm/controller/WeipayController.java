package cn.ssm.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.ssm.service.impl.WeipayService;
import cn.ssm.until.PageData;


@Controller
@RequestMapping("/wxpay")
public class WeipayController extends BaseController{
	
	@Resource(name="wxPayService")
	private WeipayService wxPayService ;
	
	
	@RequestMapping(value = "/WxPayUnifiedorder")  
	@ResponseBody  
	public Object WxPayUnifiedorder(String out_trade_no) throws Exception{  
	    HashMap<String,Object> map = new HashMap<String,Object>();  
	    String codeUrl = wxPayService.weixin_pay(out_trade_no);  
	    map.put("codeUrl",codeUrl);
	    System.out.println("我進來了");
	    return map;  
	} 
	
	/** 
	 * 生成二维码图片并直接以流的形式输出到页面 
	 * @param code_url 
	 * @param response 
	 */ 
	/*@RequestMapping("/qr_codeImg")  
	@ResponseBody  
	public void getQRCode(String code_url,HttpServletResponse response){  
	    wxPayService.encodeQrcode(code_url, response);  
	}*/
	
	 @RequestMapping("/qr_codeImg")  
	 public ModelAndView toCode (ModelAndView mv) throws Exception{
		 	PageData pd = new PageData();
		 	
			pd = this.getPageData();
			String code_url=pd.getString("code_url");
			pd.put("code_url", code_url);
			System.out.println("来了没");
			mv.addObject("pd",pd);
			mv.setViewName("weipay");
			return mv ;						
		}
	
	
	
	@RequestMapping(value = "/weixinNotify", method = RequestMethod.POST)  
	@ResponseBody  
	public void weixinNotify(HttpServletRequest request,HttpServletResponse response) throws Exception{  
	       System.out.println("支付回调方法开始！");  
	    HashMap<String,Object> map = new HashMap<String,Object>();  
	    wxPayService.weixin_notify(request, response);  
	    System.out.println("支付回调方法结束！");  
	}
	
	
	/*public String weixin_pay()throws Exception{
		//账号信息
		String appid=PayConfigUtil.APP_ID;//appid
		String appsecret=PayConfigUtil.APP_SECRET;//appsecret
		String mch_id=PayConfigUtil.MCH_ID;//商业号
		String key=PayConfigUtil.API_KEY;//key
		 
		String currTime=PayCommonUtil.getCurrTime();
		String strTime=currTime.substring(8,currTime.length());
		String strRandom=PayCommonUtil.buildRandom(4)+"";
		String nonce_str=strTime+strRandom;
		 
		String order_price= "1";//价格注意：价格的单位是分
		String body="goodssssss";//商品名称
		String out_trade_no="11338";//订单号
		 
		//获取发起电脑ip
		String spbill_create_ip=PayConfigUtil.getIP();
		//回调接口
		String notify_url=PayConfigUtil.NOTIFY_URL;
		String trade_type="NATIVE";
		 
		SortedMap packageParams=new TreeMap();
		packageParams.put("appid",appid);
		packageParams.put("mch_id",mch_id);
		packageParams.put("nonce_str",nonce_str);
		packageParams.put("body",body);
		packageParams.put("out_trade_no",out_trade_no);
		packageParams.put("total_fee",order_price);
		packageParams.put("spbill_create_ip",spbill_create_ip);
		packageParams.put("notify_url",notify_url);
		packageParams.put("trade_type",trade_type);
		 
		String sign=PayCommonUtil.createSign("UTF-8",packageParams,key);
		packageParams.put("sign",sign);
		 
		String requestXML=PayCommonUtil.getRequestXml(packageParams);
		System.out.println(requestXML);
		 
		//String resXml=HttpUtil.postData(PayConfigUtil.UFDODER_URL,requestXML);
		String resXml=HttpUtil.postData(PayConfigUtil.UFDODER_URL,requestXML);
		 
		Map map=XMLUtil.doXMLParse(resXml);
		//Stringreturn_code=(String)map.get("return_code");
		//Stringprepay_id=(String)map.get("prepay_id");
		String urlCode=(String)map.get("code_url");
		 
		return urlCode;
		}*/

}
