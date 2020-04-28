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
    @RequestMapping(value = "/py",method = RequestMethod.POST)
    @ResponseBody
    public String py(HttpServletRequest request, HttpServletResponse response){
        String urineId = request.getParameter("key1");
        String time = request.getParameter("key2");
        System.out.println(urineId + time + "haha");
        send(urineId+","+time);
        return "good";
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
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

}
