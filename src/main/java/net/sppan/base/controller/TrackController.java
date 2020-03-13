package net.sppan.base.controller;


import net.sppan.base.dao.TrackMapper;
import net.sppan.base.entity.Track;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TrackController {
    @Autowired
    private TrackMapper trackMapper;

    @RequestMapping(value = "/addTrack",method = RequestMethod.POST)
    public void addUser(Track track){
        trackMapper.addTrack(track);
    }
}
