package cn.ssm.service;

import cn.ssm.po.PayOrder;

public interface PayOrderManager {
	
	PayOrder get(String num) throws Exception;

}
