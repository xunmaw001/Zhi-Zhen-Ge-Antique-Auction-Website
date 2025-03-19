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


import com.dao.DiscusspaipinxinxiDao;
import com.entity.DiscusspaipinxinxiEntity;
import com.service.DiscusspaipinxinxiService;
import com.entity.vo.DiscusspaipinxinxiVO;
import com.entity.view.DiscusspaipinxinxiView;

@Service("discusspaipinxinxiService")
public class DiscusspaipinxinxiServiceImpl extends ServiceImpl<DiscusspaipinxinxiDao, DiscusspaipinxinxiEntity> implements DiscusspaipinxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusspaipinxinxiEntity> page = this.selectPage(
                new Query<DiscusspaipinxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscusspaipinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusspaipinxinxiEntity> wrapper) {
		  Page<DiscusspaipinxinxiView> page =new Query<DiscusspaipinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusspaipinxinxiVO> selectListVO(Wrapper<DiscusspaipinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusspaipinxinxiVO selectVO(Wrapper<DiscusspaipinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusspaipinxinxiView> selectListView(Wrapper<DiscusspaipinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusspaipinxinxiView selectView(Wrapper<DiscusspaipinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
