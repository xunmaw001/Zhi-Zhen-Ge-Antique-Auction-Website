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


import com.dao.PaipinfenleiDao;
import com.entity.PaipinfenleiEntity;
import com.service.PaipinfenleiService;
import com.entity.vo.PaipinfenleiVO;
import com.entity.view.PaipinfenleiView;

@Service("paipinfenleiService")
public class PaipinfenleiServiceImpl extends ServiceImpl<PaipinfenleiDao, PaipinfenleiEntity> implements PaipinfenleiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PaipinfenleiEntity> page = this.selectPage(
                new Query<PaipinfenleiEntity>(params).getPage(),
                new EntityWrapper<PaipinfenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PaipinfenleiEntity> wrapper) {
		  Page<PaipinfenleiView> page =new Query<PaipinfenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PaipinfenleiVO> selectListVO(Wrapper<PaipinfenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PaipinfenleiVO selectVO(Wrapper<PaipinfenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PaipinfenleiView> selectListView(Wrapper<PaipinfenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PaipinfenleiView selectView(Wrapper<PaipinfenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
