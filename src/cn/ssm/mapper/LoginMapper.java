package cn.ssm.mapper;

import cn.ssm.until.PageData;

public interface LoginMapper {
	
	/**通过id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findByCondition(PageData pd)throws Exception;

}
