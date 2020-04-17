package net.sppan.base.service.impl;


import net.sppan.base.dao.IndexMapper;
import net.sppan.base.entity.Index;
import net.sppan.base.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private IndexMapper indexMapper;

    @Override
    public List<Index> findAll() {
        return indexMapper.findAll();
    }

}
