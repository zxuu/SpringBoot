package net.sppan.base.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

@Controller
@ServerEndpoint("/webSocket")
public class WebSocket {

    private Session session;
    private static CopyOnWriteArraySet<WebSocket> webSockets=new CopyOnWriteArraySet<>();

    @RequestMapping(value = "/testS",method = RequestMethod.GET)
    @ResponseBody
    public void haha(){
        send("yes");
    }
    @RequestMapping(value = "/gpsPost",method = RequestMethod.POST)
    @ResponseBody
    public String py(HttpServletRequest request, HttpServletResponse response){
        String lat1 = request.getParameter("lat1");
        String lon1 = request.getParameter("lon1");
        String lat2 = request.getParameter("lat2");
        String lon2 = request.getParameter("lon2");
//        List<float[]> f = new ArrayList<>();
//        float[] f1 = new float[2];
//        float[] f2 = new float[2];
//        f1[0]=Float.valueOf(lon1);
//        f1[1]=Float.valueOf(lat1);
//
//        f2[0]=Float.valueOf(lon2);
//        f2[1]=Float.valueOf(lat2);
//        f.add(f1);
//        f.add(f2);
        System.out.println(lon1+","+lat1+","+lon2+","+lat2);
        send(lon1+","+lat1+","+lon2+","+lat2);
        return "gpsPostsuccess";
    }

    //车辆刷RFID时，传过来IC卡ID号
    @RequestMapping(value = "/carID",method = RequestMethod.POST)
    @ResponseBody
    public String carID(HttpServletRequest request, HttpServletResponse response){
        String carID = request.getParameter("ID");
        System.out.println(carID+":ID");
//        send(carID+":ID");
        return "carIDsuccess";
    }

    @OnOpen
    public void onOpen(Session session){
        this.session=session;
        webSockets.add(this);
        System.out.println("有新的连接，总数"+webSockets.size());
    }

    @OnClose
    public void onClose(){
        webSockets.remove(this);
        System.out.println("有新的断开，总数"+webSockets.size());
    }


    @OnMessage
    public void onMessage(String message){

        System.out.println(message);

//        send(message);
    }

    public void send(String message){
        for (WebSocket webSocket:webSockets){
            try {
                webSocket.session.getBasicRemote().sendText(message);
//                webSocket.session.getBasicRemote().sendObject(message);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }


}
