package net.sppan.base.controller;

import net.sppan.base.dao.TrackMapper;
import net.sppan.base.entity.Track;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class EchartsController{
    @GetMapping(value = "/echartstest")
    public String myDemo(){

        return "echartstest";
    }

}
