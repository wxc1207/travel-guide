package com.chao.travel.guide.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author : WXC
 * date    : 2021/1/14 20:07
 * desc    :- 日期类型转化为字符串类型
 */
public class DateToStringUtils {

    final static SimpleDateFormat sdfYTD = new SimpleDateFormat("yyyy-MM-dd");
    final static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public static String dateToStringYTD(Date date) {
        return sdfYTD.format(date);
    }
    public static String dateToString(Date date) {
        return sdf.format(date);
    }
}
