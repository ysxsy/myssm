package cn.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import cn.ssm.dao.DaoSupport;
import cn.ssm.service.LoginManager;
import cn.ssm.until.PageData;


@Service("loginService")
public class LoginService implements LoginManager{
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findByCondition(String YOYO_ID)throws Exception{
		return (PageData)dao.findForObject("LoginMapper.findByCondition", YOYO_ID);
	}

}
