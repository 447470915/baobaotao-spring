package com.baobaotao.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baobaotao.dao.LoginLogDao;
import com.baobaotao.dao.UserDao;
import com.baobaotao.domain.LoginLog;
import com.baobaotao.domain.User;

@Service
public class UserService {
    
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LoginLogDao loginLogDao;
	
	private static Logger logger=Logger.getLogger("daily-logger");
	private static Logger syslog=Logger.getLogger("system-logger");
	private static Logger consolelog=Logger.getLogger("console-logger");
	
	public boolean hasMatchUser(String userName, String password) {
		logger.info("用户:"+userName+"，使用密码："+password+"查询一次.");
		syslog.info("sys用户:"+userName+"，使用密码："+password+"查询一次.");
		consolelog.info("consolelog用户:"+userName+"，使用密码："+password+"查询一次.");
		
		String isSuccess =userDao.getMatchCount(userName, password);
		return isSuccess == "0";
	}
	
	public User findUserByUserName(String userName) {
		return userDao.findUserByUserName(userName);
	}
	
	public void loginSuccess(User user) {
		user.setCredits( 5 + user.getCredits());
		LoginLog loginLog = new LoginLog();
		loginLog.setUserId(user.getUserId());
		loginLog.setIp(user.getLastIp());
		loginLog.setLoginDate(user.getLastVisit());
        userDao.updateLoginInfo(user);
        loginLogDao.insertLoginLog(loginLog);
	}	
	
	public boolean isExistUserName(String userName){
		int isExist =userDao.queryIsExistUserName(userName);
		return isExist > 0;
	}
	
	public boolean registerToSaveUserInfo(String userName,String password){
		userDao.SaveUserInfo(userName, password);
		return true;
	}
}
