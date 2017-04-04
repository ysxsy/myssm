package cn.ssm.dao;

import cn.ssm.po.PayOrder;

public interface PayOrderDao {

	PayOrder get(String num) throws Exception;
}
