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
	
	@RequestMapping(value = "/view/user/login.create")
	public String loginPage(){
		return "user/loginPage";
	}
	
	@RequestMapping(value = "/view/user/loginCheck.create")
	public ModelAndView loginCheck(HttpServletRequest request,LoginInput loginCommand){
		boolean isValidUser = 
			   userService.hasMatchUser(loginCommand.getUserName(),
					                    loginCommand.getPassword());
		if (!isValidUser) {
			return new ModelAndView("user/loginPage", "error", "�û��������������");
		} else {
			User user = userService.findUserByUserName(loginCommand
					.getUserName());
			user.setLastIp(request.getLocalAddr());
			user.setLastVisit(new Date());
			userService.loginSuccess(user);
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("isLogin", "true");
			return new ModelAndView("user/hasLoginedPage");
		}
	}
	
	@RequestMapping(value = "/view/user/register.create")
	public String registerPage(){
		return "user/registerPage";
	}
	
	@RequestMapping(value = "/view/user/my_login_register.create")
	public ModelAndView my_login_register(HttpServletRequest request){

		String isLogoutFlag="";
		if(null!=request.getParameter("isLogout")){
			isLogoutFlag=request.getParameter("isLogout");
		}
		
		if(isLogoutFlag.equals("true")){//�˳���ť������
			request.getSession().setAttribute("isLogin","false");
		}
				
		if((request.getSession().getAttribute("isLogin")==null)||
			(request.getSession().getAttribute("isLogin")=="false")){//δ��¼
			return new ModelAndView("user/userPage");
		}else{//�ѵ�¼��ֱ�ӽ����¼����
			return new ModelAndView("user/hasLoginedPage");
		}
	}
	
	@RequestMapping(value = "/view/user/registerProcess.create")
	public ModelAndView registerProcess(HttpServletRequest request,LoginInput loginInput){
		boolean isExist =
			   userService.isExistUserName(loginInput.getUserName());
		if (!isExist) {//������
			User user  = new User();
			user.setUserName(loginInput.getUserName());
			user.setPassword(loginInput.getPassword());
			//������ע���û���Ϣ
			if(userService.registerToSaveUserInfo(user)){
				user.setLastIp(request.getLocalAddr());
				user.setLastVisit(new Date());
				userService.loginSuccess(user);
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("isLogin","true");
				//logger.info(loginCommand.getUserName()+"ע��ɹ�.");
				return new ModelAndView("user/hasLoginedPage");
			}else{
				return new ModelAndView("user/registerPage", "error", "ϵͳ����");
			}

		} else {//����
			return new ModelAndView("user/registerPage", "error", "�û����Ѵ��ڣ�");
		}
	}
	
	//����ͬ�û��ṩ��ͬ
	@RequestMapping(value = "/getHomePage.create")
	public ModelAndView getHomePage(HttpServletRequest request){
		ArrayList<String> picturePaths=homePageService.getPicturePaths(request.getParameter("tenantID"));
		request.getSession().setAttribute("picturePaths", picturePaths);
		//��Ҫ����
		return new ModelAndView("homepage-load");
	}
	
	//����ͬ�û��ṩ��ͬ
	@RequestMapping(value = "/test.create")
	public ModelAndView test(HttpServletRequest request){
		return new ModelAndView("catalogIndex/frame_list");
	}
	
}
