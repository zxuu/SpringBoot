package com.lzhpo.admin.controller;


import com.lzhpo.admin.entity.Track;
import com.lzhpo.admin.mapper.TrackMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TrackController {
    @Autowired
    private TrackMapper trackMapper;

    @RequestMapping(value = "/admin/login/addTrack")
    public void addUser(Track track){
        trackMapper.addTrack(track);
    }
}
