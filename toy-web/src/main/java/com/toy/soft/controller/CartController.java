package com.toy.soft.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.CartInfoBean;
import com.toy.soft.entity.ToysInfoBean;
import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.service.CartInfoService;
import com.toy.soft.service.ToysInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Created by fu on 2017/5/11.
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartInfoService cartInfoService;
    @Autowired
    private ToysInfoService toysInfoService;
    @RequestMapping(value = "/addCart",method = RequestMethod.POST)
    public
    @ResponseBody JsonMessage<String >addCart(CartInfoBean cartInfoBean, HttpServletRequest request){
        JsonMessage<String> result =new JsonMessage<>();
        if(request.getSession().getAttribute("user")==null) {
            if(request.getSession().getAttribute("cart")==null){
                List<CartInfoBean> list =new ArrayList<>();
                list.add(cartInfoBean);
                request.getSession().setAttribute("cart",list);
            }else{
                List<CartInfoBean> list= (List<CartInfoBean>) request.getSession().getAttribute("cart");
                for(int i=0;i<list.size();i++){
                   if(list.get(i).getToys_id()==cartInfoBean.getToys_id()){
                       list.get(i).setNum(list.get(i).getNum()+cartInfoBean.getNum());
                   }else{
                       list.add(cartInfoBean);
                    }
                }
            }
        }else{
            String currentId = UUID.randomUUID().toString();
            UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
            cartInfoBean.setId(currentId);
            cartInfoBean.setUser_id(user.getId());
            CartInfoBean cart=cartInfoService.selectByToysIdAndUserId(user.getId(),cartInfoBean.getToys_id());
            if(cart!=null){
                cart.setNum(cartInfoBean.getNum()+cart.getNum());
                cartInfoService.updateBykey(cart);
            }else{
                cartInfoService.addCart(cartInfoBean);
            }
        }
        result.setStatus(OperateResult.SUCCESS.toString());
        result.setData("添加购物车成功！");
        return result;
    }
    @RequestMapping("/toyCartInto")
    public String toyCartInto(HttpServletRequest request){
        if(request.getSession().getAttribute("user")==null){
            return "customer/login";
        }else{
            return "customer/cart";
        }
    }
    @RequestMapping(value = "/toyCart",method = RequestMethod.GET)
    public
    @ResponseBody JsonMessage<List<CartInfoBean>> toyCart(HttpServletRequest request){
        JsonMessage<List<CartInfoBean>> result=new JsonMessage<>();
            UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
            List<CartInfoBean> list=new ArrayList<>();
            if(cartInfoService.selectByUserId(user.getId())!=null){
                list=cartInfoService.selectByUserId(user.getId());
            }
            if(request.getSession().getAttribute("cart")!=null){
                List<CartInfoBean> data= (List<CartInfoBean>) request.getSession().getAttribute("cart");
                list.addAll(data);
            }
        if(list.size() > 0){
            List<String> toyId = new ArrayList<>();
            for(int i=0;i<list.size();i++){
                toyId.add(list.get(i).getToys_id());
            }
            List<ToysInfoBean> date=toysInfoService.selectByListToysId(toyId);

            for(int i=0;i<list.size();i++){
                for(int j=0;j<date.size();j++){
                    if(date.get(j).getId().equals(list.get(i).getToys_id())) {
                        list.get(i).setToysInfoBean(date.get(j));
                    }
                }
            }
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData(list);
        }
        return result;
    }

//    @RequestMapping(value = "/toyCart",method = RequestMethod.GET)
//    public
//     void toyCart(HttpServletRequest request, HttpServletResponse response){
//        JsonMessage<Map<ToysInfoBean,Integer>> result=new JsonMessage<>();
//        UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
//        List<CartInfoBean> list=new ArrayList<>();
//        if(cartInfoService.selectByUserId(user.getId())!=null){
//            list=cartInfoService.selectByUserId(user.getId());
//        }
//        if(request.getSession().getAttribute("cart")!=null){
//            List<CartInfoBean> data= (List<CartInfoBean>) request.getSession().getAttribute("cart");
//            list.addAll(data);
//        }
//        if(list.size() > 0){
//            List<String> toyId = new ArrayList<>();
//            for(int i=0;i<list.size();i++){
//                toyId.add(list.get(i).getToys_id());
//            }
//            List<ToysInfoBean> date=toysInfoService.selectByListToysId(toyId);
//            Map<ToysInfoBean,Integer> map=new HashMap<>();
//            for(int i=0;i<list.size();i++){
//                for(int j=0;j<date.size();j++){
//                    if(date.get(j).getId().equals(list.get(i).getToys_id())) {
//                        map.put(date.get(j),list.get(i).getNum());
//                    }
//                }
//            }
//            result.setStatus(OperateResult.SUCCESS.toString());
//            result.setData(map);
//        }
//
//       JSONObject resultJson= (JSONObject) JSON.toJSON(result);
//
//        try {
//            PrintWriter printWriter= response.getWriter();
//            printWriter.write(resultJson.toJSONString());
//            printWriter.flush();
//            printWriter.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//    }


}