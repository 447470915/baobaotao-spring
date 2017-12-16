package com.baobaotao.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baobaotao.dao.HomePageDao;

@Service
public class HomePageService {
    
	@Autowired
	private HomePageDao homePageDao;
	public ArrayList<String> getPicturePaths(String who){
		ArrayList<String> picturePaths;
		picturePaths=homePageDao.queryInfo(who);
		return picturePaths;
	}
}
