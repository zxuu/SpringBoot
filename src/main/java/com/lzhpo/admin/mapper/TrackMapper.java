package com.lzhpo.admin.mapper;


import com.lzhpo.admin.entity.Track;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TrackMapper {
    @Insert("insert into track(loc_time,entity_name,latitude,longitude,speed,coord_type_input,person_name,person_phone)" +
            " values(#{loc_time},#{entity_name},#{latitude},#{longitude},#{speed},#{coord_type_input},#{person_name},#{person_phone})")
    public void addTrack(Track track);
}
