package com.caelumtrade.realestate.util;

/**
 * Error 커스텀 마이징
 */
public class BaseException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public static String EXCEPTION_MESSAGE = "";

    private String errorCode;
    private String errorMessage;
    private String[] errorArgs;

    private Object obj;

    public BaseException() {
        super("알수없는 에러가 발생하였습니다. 관리자에게 문의 바랍니다.(EEE0)");
        this.errorCode = "EEE0";
        this.errorMessage = "알수없는 에러가 발생하였습니다. 관리자에게 문의 바랍니다.";
    }

    public BaseException(String errorCode, String errorMessage) {
        super(errorMessage + "(" + errorCode + ")");
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    public BaseException(String errorCode, String errorMessage, String[] errorArgs) {
        super(errorMessage + "(" + errorCode + ")");
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.errorArgs = errorArgs;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String[] getErrorArgs() {
        return errorArgs;
    }

    public void setErrorArgs(String[] errorArgs) {
        this.errorArgs = errorArgs;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    /**
     * 함수명   : printStackTraceToString
     * FuncDesc : Exception Message 반환
     * Param    : e : Exception
     * Return   : String : Exception Message
     * Author   : 박진성
     * History  : 2021-05-06
     */
    public static String printStackTraceToString(Throwable e) {
        StringBuilder sb = new StringBuilder();

        sb.append(e.toString());
        sb.append("\n");

        StackTraceElement element[] = e.getStackTrace();

        for (int i = 0; i < element.length; i++) {
            sb.append("\tat ");
            sb.append(element[i].toString());
            sb.append("\n");
        }

        EXCEPTION_MESSAGE = sb.toString();

        return sb.toString();
    }
}