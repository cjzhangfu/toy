package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;


/**
 * Created by fu on 2017/4/30.
 */
@Controller
public class UploadController {
    @RequestMapping("/upload/UploadAction")
    public
    @ResponseBody
    JsonMessage<StringBuffer> upload(HttpServletRequest request){
        JsonMessage<StringBuffer> result = new JsonMessage<>();
        StringBuffer data=new StringBuffer();
        String path ="F:/upload/";
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        if(multipartResolver.isMultipart(request)){
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator<String> iter = multiRequest.getFileNames();
            System.out.println("1111");
            while(iter.hasNext())
            {
                MultipartFile file = multiRequest.getFile(iter.next());
                File targetfile = new File(path,file.getOriginalFilename());
                String currentName = path+file.getOriginalFilename();
                if(!targetfile.exists()){
                    targetfile.mkdir();
                }
                try {
                    file.transferTo(targetfile);
                    data.append(currentName);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData(data);
        }
        return result;
    }
}
