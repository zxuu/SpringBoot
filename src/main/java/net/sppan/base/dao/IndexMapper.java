package net.sppan.base.dao;

import net.sppan.base.entity.Index;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IndexMapper {

    List<Index> findAll();
}
