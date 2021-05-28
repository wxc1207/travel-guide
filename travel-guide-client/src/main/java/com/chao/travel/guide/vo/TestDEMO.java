package com.chao.travel.guide.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author : WXC
 * date    : 2021/5/25 17:02
 * desc    :-
 */
public class TestDEMO {

    public static void main(String[] args) {

//        new MyRunable().start();

    }

}

class MyRunable implements Runnable {

    @Override
    public void run() {
        long time = System.currentTimeMillis();
        Date date = new Date(time);
        System.out.println(date);
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        String format = sdf.format(date);
        System.out.println(format);
    }
}