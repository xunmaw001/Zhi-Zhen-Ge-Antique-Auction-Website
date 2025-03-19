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


import com.dao.PaipinxinxiDao;
import com.entity.PaipinxinxiEntity;
import com.service.PaipinxinxiService;
import com.entity.vo.PaipinxinxiVO;
import com.entity.view.PaipinxinxiView;

@Service("paipinxinxiService")
public class PaipinxinxiServiceImpl extends ServiceImpl<PaipinxinxiDao, PaipinxinxiEntity> implements PaipinxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PaipinxinxiEntity> page = this.selectPage(
                new Query<PaipinxinxiEntity>(params).getPage(),
                new EntityWrapper<PaipinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PaipinxinxiEntity> wrapper) {
		  Page<PaipinxinxiView> page =new Query<PaipinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PaipinxinxiVO> selectListVO(Wrapper<PaipinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PaipinxinxiVO selectVO(Wrapper<PaipinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PaipinxinxiView> selectListView(Wrapper<PaipinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PaipinxinxiView selectView(Wrapper<PaipinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
