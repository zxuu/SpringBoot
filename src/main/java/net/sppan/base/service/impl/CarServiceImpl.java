package net.sppan.base.service.impl;

import net.sppan.base.dao.CarMapper;
import net.sppan.base.entity.Car;
import net.sppan.base.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    @Autowired
    private CarMapper carMapper;


    @Override
    public List<Car> carCateNum() {
        return carMapper.carCateNum();
    }
}
