package com.sy.shop.api;

import com.sy.shop.commons.dto.BaseResult;
import com.sy.shop.commons.utils.HttpClientUtils;
import com.sy.shop.commons.utils.MapperUtils;
import com.sy.shop.domain.*;
import com.sy.shop.dto.TbItemDTO;
import com.sy.shop.dto.TbUserAddressDTO;
import com.sy.shop.dto.TbUserDTO;
import org.apache.http.message.BasicNameValuePair;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class UserApi {

    /**
     * 通过登录逻辑，来获得一个TbUserDTO对象
     * @param tbUserDTO
     * @return
     */
    public static TbUserDTO login(TbUserDTO tbUserDTO){
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("username",tbUserDTO.getUsername()));
        params.add(new BasicNameValuePair("password",tbUserDTO.getPassword()));
        String json = HttpClientUtils.doPost(API.API_USERS_LOGIN, params.toArray(new BasicNameValuePair[params.size()]));
        try {
            TbUserDTO user = MapperUtils.json2pojoByTree(json, "data", TbUserDTO.class);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static TbUserDTO register(TbUserDTO tbUserDTO) {
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("username",tbUserDTO.getUsername()));
        params.add(new BasicNameValuePair("password",tbUserDTO.getPassword()));
        params.add(new BasicNameValuePair("phone",tbUserDTO.getPhone()));

        String json = HttpClientUtils.doPost(API.API_USERS_REGISTER, params.toArray(new BasicNameValuePair[params.size()]));
        System.out.println(json);
        return null;
    }

    public static List<TbItemDTO> products(TbItem tbItemDTO){
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("title",tbItemDTO.getTitle()));
        String json = HttpClientUtils.doPost(API.API_SEARCH_PAGE, params.toArray(new BasicNameValuePair[params.size()]));
        try {
            List<TbItemDTO> data = MapperUtils.json2listByTree(json, "data", TbItemDTO.class);
            return data;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static TbItem product(String id) {

        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("id",id));
        String json = HttpClientUtils.doPost(API.API_SEARCH_PRODUCT, params.toArray(new BasicNameValuePair[params.size()]));
        try {
            TbItem data = MapperUtils.json2pojoByTree(json, "data", TbItem.class);
            return data;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static List<TbUserAddressDTO> address(long userid) {
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("id",userid+""));
        String json = HttpClientUtils.doPost(API.API_SEARCH_ADDRESS, params.toArray(new BasicNameValuePair[params.size()]));
        try {
            List<TbUserAddressDTO> data = MapperUtils.json2listByTree(json, "data", TbUserAddressDTO.class);
            return data;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static int pay(TbOrder tbOrder, TbOrderItem tbOrderItem) {
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("itemId",tbOrderItem.getItemId()));
        params.add(new BasicNameValuePair("num",tbOrderItem.getNum()+""));
        params.add(new BasicNameValuePair("payment",tbOrder.getPayment()+""));
        params.add(new BasicNameValuePair("shippingName",tbOrder.getShippingName()));
        String json = HttpClientUtils.doPost(API.API_SEARCH_PAY, params.toArray(new BasicNameValuePair[params.size()]));
        try {
            Map<String, Object> stringObjectMap = MapperUtils.json2map(json);
            System.out.println(stringObjectMap.get("message"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
