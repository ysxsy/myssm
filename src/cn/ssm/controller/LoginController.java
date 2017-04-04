package cn.ssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.ssm.service.impl.LoginService;
import cn.ssm.until.PageData;


@Controller
public class LoginController extends BaseController{
		
		@Resource(name="loginService")
		private LoginService loginService ;
		public static final boolean ISTEST = true;
		public static final String URL_FILE = ISTEST ? "http://oss.yoyozhibo.com/yoyo-oss/ZhiBo/HeadServlet?key="
			: "http://oss.yoyozhibo.com/yoyo-oss/Live/HeadServlet?key=";	
		
		
	    @RequestMapping("/login")  
	    public ModelAndView listUser (ModelAndView mv) throws Exception{
			//List<User> list = testService.getUserList() ;
			//mv.addObject("list", list) ;
			mv.setViewName("login");
			return mv ;						
		}
	    
	    /*@RequestMapping("/goEdit")
		public ModelAndView goEdit()throws Exception{
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			pd = loginService.findByCondition(pd);	//根据ID读取
			mv.setViewName("login");
			mv.addObject("pd", pd);	
			return mv;
		}*/
	    
	    @RequestMapping(value="/goFind")
		@ResponseBody
		public void goFindU(HttpServletResponse response) throws Exception {
			PageData pd = new PageData();
			pd = this.getPageData();
			String YOYO_ID = pd.getString("YOYO_ID");
			pd=loginService.findByCondition(YOYO_ID);	
			System.out.println(pd);			
			renderJson(pd, response);
		}
	    
	    @RequestMapping("/answer")  
	    public ModelAndView find (ModelAndView mv) throws Exception{
	    	PageData pd = new PageData();		
			pd = this.getPageData();
			String YOYO_ID = pd.getString("YOYO_ID");
			pd=loginService.findByCondition(YOYO_ID);
			if(pd!=null|| "".equals(pd)){
			pd.put("HEAD", URL_FILE+pd.get("HEAD"));}
			//mv.addObject("list", list) ;
			mv.setViewName("login");
			mv.addObject("pd",pd);
			return mv ;						
		}
	    
	    @RequestMapping("/logout")  
	    public ModelAndView logout(ModelAndView mv) throws Exception{

			mv.setViewName("login");

			return mv ;						
		}

	   

}
