package user.web;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.domain.dbin.User;
import user.domain.input.LoginInput;
import user.service.HomePageService;
import user.service.UserService;

@Controller
public class LoginController{
	//private static Logger logger=Logger.getLogger("daily-log");
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private HomePageService homePageService; 
	
	@RequestMapping(value = "/login.create")
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping(value = "/loginCheck.create")
	public ModelAndView loginCheck(HttpServletRequest request,LoginInput loginCommand){
		boolean isValidUser = 
			   userService.hasMatchUser(loginCommand.getUserName(),
					                    loginCommand.getPassword());
		if (!isValidUser) {
			return new ModelAndView("login", "error", "用户名或是密码错误");
		} else {
			User user = userService.findUserByUserName(loginCommand
					.getUserName());
			user.setLastIp(request.getLocalAddr());
			user.setLastVisit(new Date());
			userService.loginSuccess(user);
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("isLogin", "true");
			return new ModelAndView("has_logined");
		}
	}
	
	@RequestMapping(value = "/register.create")
	public String registerPage(){
		return "register";
	}
	
	@RequestMapping(value = "/my_login_register.create")
	public ModelAndView my_login_register(HttpServletRequest request){

		String isLogoutFlag="";
		if(null!=request.getParameter("isLogout")){
			isLogoutFlag=request.getParameter("isLogout");
		}
		
		if(isLogoutFlag.equals("true")){//退出按钮服务函数
			request.getSession().setAttribute("isLogin","false");
		}
				
		if((request.getSession().getAttribute("isLogin")==null)||
			(request.getSession().getAttribute("isLogin")=="false")){//未登录
			return new ModelAndView("my_login_register");
		}else{//已登录，直接进入登录界面
			return new ModelAndView("has_logined");
		}
	}
	
	@RequestMapping(value = "/registerProcess.create")
	public ModelAndView registerProcess(HttpServletRequest request,LoginInput loginInput){
		boolean isExist =
			   userService.isExistUserName(loginInput.getUserName());
		if (!isExist) {//不存在
			User user  = new User();
			user.setUserName(loginInput.getUserName());
			user.setPassword(loginInput.getPassword());
			//保存新注册用户信息
			if(userService.registerToSaveUserInfo(user)){
				user.setLastIp(request.getLocalAddr());
				user.setLastVisit(new Date());
				userService.loginSuccess(user);
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("isLogin","true");
				//logger.info(loginCommand.getUserName()+"注册成功.");
				return new ModelAndView("has_logined");
			}else{
				return new ModelAndView("register", "error", "系统错误！");
			}

		} else {//存在
			return new ModelAndView("register", "error", "用户名已存在！");
		}
	}
	
	//给不同用户提供不同
	@RequestMapping(value = "/getHomePage.create")
	public ModelAndView getHomePage(HttpServletRequest request){
		ArrayList<String> picturePaths=homePageService.getPicturePaths(request.getParameter("tenantID"));
		request.getSession().setAttribute("picturePaths", picturePaths);
		//需要处理
		return new ModelAndView("homepage-load");
	}
	
	//给不同用户提供不同
	@RequestMapping(value = "/test.create")
	public ModelAndView test(HttpServletRequest request){
		System.out.println("here");
		return new ModelAndView("frame_list");
	}
	
}
