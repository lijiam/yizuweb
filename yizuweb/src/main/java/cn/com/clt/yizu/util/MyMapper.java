package cn.com.clt.yizu.util;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * @author ccj
 * @description 继承自己的mapper
 * @time 2018-03-22-16:08
 */
public interface MyMapper<T> extends Mapper<T>,MySqlMapper<T> {
}
