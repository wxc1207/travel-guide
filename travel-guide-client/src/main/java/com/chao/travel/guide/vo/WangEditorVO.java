package com.chao.travel.guide.vo;

/**
 * @author : WXC
 * date    : 2020/11/4 16:42
 * desc    :-
 */
public class WangEditorVO {
    private Integer errno;
    private Object data;

    public Integer getErrno() {
        return errno;
    }

    public Object getData() {
        return data;
    }

    public static WangEditorVO success(Object data) {
        WangEditorVO wangEditorVO = new WangEditorVO();
        wangEditorVO.errno = 0;
        wangEditorVO.data = data;
        return wangEditorVO;
    }

    public static WangEditorVO error(Integer errno, Object data) {
        WangEditorVO wangEditorVO = new WangEditorVO();
        wangEditorVO.errno = errno;
        wangEditorVO.data = data;
        return wangEditorVO;
    }
}
