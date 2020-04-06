package net.sppan.base.controller;

import net.sppan.base.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/")
public class EchartsController{
    @Autowired
    private IndexService indexService;

    @RequestMapping(value = "datasee", method = RequestMethod.GET)
    public String index() {
        System.out.println("index----------------------");
        return "index2";
    }
    @RequestMapping(value = "list", method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> getList() {
        Map<String,Object> map = new HashMap<>();
        map.put("msg", "ok");
        map.put("data", indexService.findAll());
        return map;
    }
}
