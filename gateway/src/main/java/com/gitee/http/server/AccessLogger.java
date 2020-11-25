package com.gitee.http.server;

/**
 * HTTP access log 接口
 * @author Winter Lau<javayou@gmail.com>
 */
interface AccessLogger {

    void writeAccessLog(String uri, String msg);

}
