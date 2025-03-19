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


import com.dao.GudongxinwenDao;
import com.entity.GudongxinwenEntity;
import com.service.GudongxinwenService;
import com.entity.vo.GudongxinwenVO;
import com.entity.view.GudongxinwenView;

@Service("gudongxinwenService")
public class GudongxinwenServiceImpl extends ServiceImpl<GudongxinwenDao, GudongxinwenEntity> implements GudongxinwenService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GudongxinwenEntity> page = this.selectPage(
                new Query<GudongxinwenEntity>(params).getPage(),
                new EntityWrapper<GudongxinwenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GudongxinwenEntity> wrapper) {
		  Page<GudongxinwenView> page =new Query<GudongxinwenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GudongxinwenVO> selectListVO(Wrapper<GudongxinwenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GudongxinwenVO selectVO(Wrapper<GudongxinwenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GudongxinwenView> selectListView(Wrapper<GudongxinwenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GudongxinwenView selectView(Wrapper<GudongxinwenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
