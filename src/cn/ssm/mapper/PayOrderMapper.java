package cn.ssm.mapper;

import cn.ssm.po.PayOrder;

public interface PayOrderMapper {
	PayOrder get(String num) throws Exception;
}
