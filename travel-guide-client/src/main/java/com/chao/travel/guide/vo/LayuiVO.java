package com.chao.travel.guide.vo;

/**
 * @author : WXC
 * date    : 2021/1/10 19:13
 * desc    :-
 */
public class LayuiVO {
    private Integer code;
    private String msg;
    private Long count;
    private Object data;

    /**
     * 提供构造方法
     */
    public LayuiVO() {
    }

    public LayuiVO(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public Long getCount() {
        return count;
    }

    public Object getData() {
        return data;
    }

    private static final LayuiVO LAYUI_VO = new LayuiVO(0, "成功");

    public static LayuiVO success() {
        return LAYUI_VO;
    }

    public static LayuiVO success(Object data) {
        LayuiVO layuiVO = new LayuiVO();
        layuiVO.code = 0;
        layuiVO.msg = "成功";
        layuiVO.data = data;
        return layuiVO;
    }

    /**
     * @param count 数据总条数
     * @param data  真实数据
     * @return vo
     */
    public static LayuiVO success(Long count, Object data) {
        LayuiVO layuiVO = new LayuiVO();
        layuiVO.code = 0;
        layuiVO.msg = "成功";
        layuiVO.count = count;
        layuiVO.data = data;
        return layuiVO;
    }

    public static LayuiVO error(Integer code, String msg) {
        LayuiVO layuiVO = new LayuiVO();
        layuiVO.code = code;
        layuiVO.msg = msg;
        return layuiVO;
    }

}
