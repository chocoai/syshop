package com.sy.shop.api;

import com.sy.shop.commons.utils.HttpClientUtils;
import com.sy.shop.commons.utils.MapperUtils;
import com.sy.shop.dto.TbUserDTO;
import org.apache.http.message.BasicNameValuePair;

import java.util.ArrayList;
import java.util.List;

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
}
