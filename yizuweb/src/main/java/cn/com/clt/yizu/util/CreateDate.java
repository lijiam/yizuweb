package cn.com.clt.yizu.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author ccj
 * @description 获取当前时间
 * @time 2018-03-30-11:34
 */
public class CreateDate {
   public String getDate(){
       Date date = new Date();//获得系统时间.
       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       String nowTime = sdf.format(date);//将时间格式转换成符合Timestamp要求的格式.
       return nowTime;
   }
}
