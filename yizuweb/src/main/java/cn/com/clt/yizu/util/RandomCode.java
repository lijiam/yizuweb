package cn.com.clt.yizu.util;

import java.util.Random;

/**
 * @author ccj
 * @description 生成6位伪随机数
 * @time 2018-03-29-14:00
 */
public class RandomCode {
    public String getRandomCode(){
        StringBuffer flag = new StringBuffer();
            String sources = "0123456789"; // 加上一些字母，就可以生成pc站的验证码了
            Random rand = new Random();
            for (int j = 0; j < 6; j++)
            {
                flag.append(sources.charAt(rand.nextInt(9)) + "");
            }
            System.out.println(flag.toString());
        return flag.toString();
    }
}
