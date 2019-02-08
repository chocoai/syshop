package com.sy.shop.commons.utils;

import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.Arrays;

public class HttpClientUtils {

    private static final String HTTP_CLIENT_GET = "GET";
    private static final String HTTP_CLIENT_POST = "POST";
    private static final String HTTP_CLIENT_CONNECTION = "keep-alive";
    private static final String HTTP_CLIENT_USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";

    /**
     * get请求没有cookie
     * @param url 请求地址
     * @return 返回json
     */
    public static String doGet(String url){
        return HttpClientUtils.resultMessage("GET",url,null);
    }

    /**
     *get请求有cookie
     * @param url 请求地址
     * @param cookie cookie
     * @return 返回json
     */
    public static String doGet(String url,String cookie){
        return HttpClientUtils.resultMessage("GET",url,cookie);
    }

    /**
     *post请求有参数
     * @param url 请求地址
     * @param params 参数列表
     * @return  返回json
     */
    public static String doPost(String url,BasicNameValuePair...params){
        return HttpClientUtils.resultMessage("POST",url,null,params);
    }

    /**
     * post 请求
     * @param url 请求地址
     * @param cookie cookie
     * @param params 请求参数
     * @return 返回json
     */
    public static String doPost(String url,String cookie, BasicNameValuePair... params) {
        return HttpClientUtils.resultMessage("POST", url, cookie, params);
    }


    /**
     * 通过API获取数据
     * @param requestMethod 请求方式
     * @param url 请求地址
     * @param cookie cookie
     * @param params 请求参数
     * @return 返回json字符串
     */
    public static String resultMessage(String requestMethod, String url, String cookie, BasicNameValuePair...params){
        CloseableHttpClient httpClient = HttpClients.createDefault();
        CloseableHttpResponse httpResponse = null;
        String result = null;
        try {
            if (requestMethod.equals(HTTP_CLIENT_GET)) {
                HttpGet httpGet = new HttpGet(url);
                httpGet.setHeader("Connection", HTTP_CLIENT_CONNECTION);
                httpGet.setHeader("Cookie", cookie);
                httpGet.setHeader("User_Agent", HTTP_CLIENT_USER_AGENT);
                httpResponse = httpClient.execute(httpGet);
            }
            if (requestMethod.equals(HTTP_CLIENT_POST)) {
                HttpPost httpPost = new HttpPost(url);
                httpPost.setHeader("Connection", HTTP_CLIENT_CONNECTION);
                httpPost.setHeader("Cookie", cookie);
                httpPost.setHeader("User_Agent", HTTP_CLIENT_USER_AGENT);
                httpPost.setEntity(new UrlEncodedFormEntity(Arrays.asList(params),"UTF-8"));
                httpResponse = httpClient.execute(httpPost);
            }
            HttpEntity entity = httpResponse.getEntity();
            result = EntityUtils.toString(entity);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (httpClient != null) {
                try {

                    httpClient.close();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

}
