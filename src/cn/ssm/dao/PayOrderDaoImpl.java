package cn.ssm.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import cn.ssm.po.PayOrder;


@Repository("payOrderDaoImpl")
public class PayOrderDaoImpl implements PayOrderDao{
	
	
	/*@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;*/
	
	private SqlSessionFactory factory;

	@Override
	public PayOrder get(String num) throws Exception {
		SqlSession session = factory.openSession();
		PayOrder payorder = session.selectOne("PayOrderMapper.get", num);
        session.close();
        return payorder;
	}
	
	
	

}
