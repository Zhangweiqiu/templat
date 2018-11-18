package com.nit.pang.model.response;

import java.util.Map;

/**
 * @author Wei
 * @data 2018/11/18 22:17
 */
public class ResponseResult {
    private Integer code;
    private Long timestamp;
    private Map<String,Object> data;
    private String message = "";

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public ResponseResult(){}

    public ResponseResult(Map<String,Object> data){
        this.timestamp = System.currentTimeMillis()/1000;
        this.data = data;
    }

    public ResponseResult(Map<String,Object> data,String message){
        this.timestamp = System.currentTimeMillis()/1000;
        this.data = data;
        this.message=message;
    }

}
