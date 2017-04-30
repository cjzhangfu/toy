package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.TypeNameInfoBean;
import com.toy.soft.exception.ToysException;
import com.toy.soft.service.TypeNameInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by fu on 2017/4/29.
 */
@Controller
@RequestMapping("/typeName")
public class TypeNameController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private TypeNameInfoService typeNameInfoService;
    @RequestMapping(value = "/typeName_list",method = RequestMethod.GET)
    public String typeName_list(Model model){
        List<TypeNameInfoBean> list=typeNameInfoService.select();
        model.addAttribute("typeName",list);
        return "admin/typeName_list";
    }
    @RequestMapping(value = "/typeNameDelete",method = RequestMethod.POST)
    public
    @ResponseBody
    JsonMessage<String> typeNameDelete(String typeId){
        logger.info("参数名称>>>>>{}",typeId);
        JsonMessage<String> jsonMessage = new JsonMessage<>();
        try {
            typeNameInfoService.delectBykey(typeId);
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("删除成功");
        }catch(Exception e){
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setErrorMsg("删除失败");
        }
        logger.info("结果》》》{}",jsonMessage.toString());
        return jsonMessage;
    }
    @RequestMapping(value = "/typeName_update",method = RequestMethod.GET)
    public String adminUpdate(String id,String typeName,Model model){
        Map<String,String> map = new HashMap<>();
        map.put("id",id);
        map.put("typeName",typeName);
        model.addAttribute("maps",map);
        return "/admin/typeName_update";
    }
    @RequestMapping(value = "update",method = RequestMethod.POST)
    /**
     * 更新用户
     */
    public
    @ResponseBody JsonMessage<String> update(TypeNameInfoBean typeNameInfoBean){
        logger.info("参数名称》》》{}",typeNameInfoBean.toString());
        JsonMessage<String> jsonMessage=new JsonMessage<>();
        try {
            typeNameInfoService.updateTypeName(typeNameInfoBean);
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("更新成功！");
        } catch (Exception e) {
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setErrorMsg("更新失败！");
            e.printStackTrace();
        }
        return jsonMessage;
    }
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(){
        return "/admin/typeName_add";
    }
    @RequestMapping(value = "/typeName_add",method = RequestMethod.POST)
    public
    @ResponseBody JsonMessage<String> admin_add(TypeNameInfoBean typeNameInfoBean){
        JsonMessage<String> jsonMessage=new JsonMessage<>();
        String currentId= UUID.randomUUID().toString();
        logger.info(typeNameInfoBean.getTypename());
        typeNameInfoBean.setId(currentId);
        StringBuffer errsName = new StringBuffer();
        try {
            typeNameInfoService.addTypeName(typeNameInfoBean);
        } catch (Exception e) {
            e.printStackTrace();
            errsName.append(typeNameInfoBean.getTypename()+"添加失败"+e.getMessage()+";");
        }
        if(StringUtils.isEmpty(errsName.toString())){
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("添加成功");
        }else{
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setData(errsName.toString());
            jsonMessage.setErrorMsg(errsName.toString());
        }
        return jsonMessage;
    }
}
