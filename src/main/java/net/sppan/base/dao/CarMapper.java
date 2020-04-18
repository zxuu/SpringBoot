package net.sppan.base.dao;

import net.sppan.base.entity.Car;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CarMapper {
    List<Car> carCateNum();
}
