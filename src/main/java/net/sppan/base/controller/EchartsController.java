package net.sppan.base.controller;

import net.sppan.base.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/")
public class EchartsController{
    @Autowired
    private IndexService indexService;

    @RequestMapping(value = "datasee", method = RequestMethod.GET)
    public String index() {
        System.out.println("index----------------------");
        return "admin/CarStream";
    }
    @RequestMapping(value = "list", method = POST,consumes = MediaType.ALL_VALUE, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public Map<String,Object> getList() {
        Map<String,Object> map = new HashMap<>();
        map.put("status", 0);
        map.put("msg", "ok");
        map.put("data", indexService.findAll());
        System.out.println(map.toString());
        return map;
    }

    @RequestMapping(value = "haha", method = RequestMethod.GET)
    public String haha() {
//        String s = JSON.toJSONString(indexService.findAll());
//        System.out.println(s);
        return "CarLines/carLines";
    }

}
