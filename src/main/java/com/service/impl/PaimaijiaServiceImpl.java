package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.PaimaijiaDao;
import com.entity.PaimaijiaEntity;
import com.service.PaimaijiaService;
import com.entity.vo.PaimaijiaVO;
import com.entity.view.PaimaijiaView;

@Service("paimaijiaService")
public class PaimaijiaServiceImpl extends ServiceImpl<PaimaijiaDao, PaimaijiaEntity> implements PaimaijiaService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PaimaijiaEntity> page = this.selectPage(
                new Query<PaimaijiaEntity>(params).getPage(),
                new EntityWrapper<PaimaijiaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PaimaijiaEntity> wrapper) {
		  Page<PaimaijiaView> page =new Query<PaimaijiaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PaimaijiaVO> selectListVO(Wrapper<PaimaijiaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PaimaijiaVO selectVO(Wrapper<PaimaijiaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PaimaijiaView> selectListView(Wrapper<PaimaijiaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PaimaijiaView selectView(Wrapper<PaimaijiaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
