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


import com.dao.DiscussgudongxinwenDao;
import com.entity.DiscussgudongxinwenEntity;
import com.service.DiscussgudongxinwenService;
import com.entity.vo.DiscussgudongxinwenVO;
import com.entity.view.DiscussgudongxinwenView;

@Service("discussgudongxinwenService")
public class DiscussgudongxinwenServiceImpl extends ServiceImpl<DiscussgudongxinwenDao, DiscussgudongxinwenEntity> implements DiscussgudongxinwenService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussgudongxinwenEntity> page = this.selectPage(
                new Query<DiscussgudongxinwenEntity>(params).getPage(),
                new EntityWrapper<DiscussgudongxinwenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussgudongxinwenEntity> wrapper) {
		  Page<DiscussgudongxinwenView> page =new Query<DiscussgudongxinwenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussgudongxinwenVO> selectListVO(Wrapper<DiscussgudongxinwenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussgudongxinwenVO selectVO(Wrapper<DiscussgudongxinwenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussgudongxinwenView> selectListView(Wrapper<DiscussgudongxinwenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussgudongxinwenView selectView(Wrapper<DiscussgudongxinwenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
