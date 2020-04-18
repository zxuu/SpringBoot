package net.sppan.base.controller;

import com.alibaba.fastjson.JSON;
import net.sppan.base.Constant;
import net.sppan.base.entity.Car;
import net.sppan.base.entity.help.CarCateNum;
import net.sppan.base.service.CarService;
import net.sppan.base.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.*;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/")
public class EchartsController{
    @Autowired
    private IndexService indexService;
    @Autowired
    private CarService carService;

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

    //统计各种车辆的数目
    @RequestMapping(value = "carCateNumSee", method = GET,consumes = MediaType.ALL_VALUE, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public Map<String,Object> carCateNum() {
        int[] carCate = new int[6];

        List<Car> carList = carService.carCateNum();

        Map<String,Integer> map = new HashMap<>();
        Map<String,Object> resultMap = new HashMap<>();

        for (int i = 0; i < Constant.carCate.length; i++) {
            map.put(Constant.carCate[i], 0);
        }
        for (int i = 0; i < carList.size(); i++) {
            map.put(carList.get(i).getCate(), map.get(carList.get(i).getCate())+1);
        }

        System.out.println(map);

        for (int i = 0; i < 6; i++) {
            carCate[i] = map.get(Constant.carCate[i]);
        }

        Map<String,Object> data = new HashMap<>();
        data.put("categories", Constant.carCate);

        List<CarCateNum> cateNumList = new ArrayList<>();
        CarCateNum cateNum = new CarCateNum();
        cateNum.setName("车型数量");
        cateNum.setData(carCate);
        cateNumList.add(cateNum);

        data.put("series", cateNumList);

        resultMap.put("status", 0);
        resultMap.put("hitSugarSelf", true);
        resultMap.put("msg", "ok成功");
        resultMap.put("data", data);

//        System.out.println(JSON.toJSON(resultMap));
        return resultMap;
    }

}
