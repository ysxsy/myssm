package cn.ssm.service;

import cn.ssm.until.PageData;

public interface LoginManager {
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findByCondition(String YOYO_ID)throws Exception;

}
