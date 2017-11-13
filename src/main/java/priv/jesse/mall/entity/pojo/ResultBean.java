package priv.jesse.mall.entity.pojo;

import java.io.Serializable;

/**
 * 接口返回数据模型
 *
 * @author hfb
 * @date 2017/9/18
 */
public class ResultBean<T> implements Serializable {
    private static final long serialVersionUID = -6248298306422072592L;
    /**
     * 表示接口调用成功
     */
    public static final int SUCCESS = 0;
    /**
     * 表示接口调用失败
     */
    public static final int FAIL = 1;
    /**
     * 表示没有权限调用该接口
     */
    public static final int NO_PERMISSION = 2;

    public static final String NO_LOGIN_MSG = "未登录";
    public static final String NO_PERMISSION_MSG = "没有权限";
    public static final String SUCC_MSG = "成功";
    public static final String FAIL_MSG = "失败";

    private String msg = SUCC_MSG;
    private int code = SUCCESS;
    /**
     * 返回的数据
     */
    private T data;

    public ResultBean() {
        super();
    }

    public ResultBean(T data) {
        super();
        this.data = data;
    }

    /**
     * 包装异常信息
     *
     * @param e
     */
    public ResultBean(Throwable e) {
        super();
        this.msg = e.getMessage();
        this.code = FAIL;
    }

    public ResultBean(String msg) {
        super();
        this.msg = msg;
        this.code = FAIL;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "ResultBean{" +
                "msg='" + msg + '\'' +
                ", code=" + code +
                ", data=" + data +
                '}';
    }
}
