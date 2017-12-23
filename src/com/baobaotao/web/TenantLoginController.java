package com.baobaotao.web;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.baobaotao.dao.DaoByPckag;
import com.baobaotao.service.HomePageService;

@Controller
public class TenantLoginController{
	private static Logger logger=Logger.getLogger("daily-log");
	
	@Autowired
	private DaoByPckag accessProModule;
	
	@Autowired
	private HomePageService homePageService;
	
	@RequestMapping(value="/tenantUploadFile.create",method = RequestMethod.POST)
	public ModelAndView upLoadFile(HttpServletRequest request){
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
		MultipartHttpServletRequest multipartHttpServletRequest = commonsMultipartResolver.resolveMultipart(request);
		MultipartFile file=multipartHttpServletRequest.getFile("upLoadPic");
		String tenantId=(String) request.getSession().getAttribute("tenantId");
		if(!file.isEmpty()){
			try{
				//后去相对web容器的文件保存的绝对路径
				String sourceFileName=file.getOriginalFilename();
				logger.info("租户："+tenantId+",上传了一张图片，名字："+sourceFileName);
				String sourceFileNameType=sourceFileName.substring(sourceFileName.indexOf("."));
				String targetRandomName=Integer.toString(new java.util.Random().nextInt(100000));
				//获取相对web容器存放图片的绝对路径
				/*String dir=request.getSession().getServletContext().getRealPath("/")
				+"images/";*/
				String dir="D:/javaee_workspace/baobaotao-spring/WebContent/images/";
				String newDirAndFile=dir+tenantId+"/"+targetRandomName+sourceFileNameType;
				File desFile=new File(newDirAndFile);
				while(desFile.exists()){//存在则重新命名
					targetRandomName=Integer.toString(new java.util.Random().nextInt(100000));
					newDirAndFile=dir+targetRandomName+"."+sourceFileNameType;
				}
				desFile.mkdirs();//新建文件
				//转存文件
				file.transferTo(desFile);
			}catch(Exception e){
				logger.error("租户："+tenantId+",上传了一张图片失败.",e);
			}
		}
		return new ModelAndView("");
	}
	
	//获取租户登录界面
	@RequestMapping(value = "/tenantLogin.create")
	public ModelAndView loginPage(){
		return new ModelAndView("tenant_login");
	}
	//获取租户注册界面
	@RequestMapping(value = "/tenantRegister.create")
	public ModelAndView rigsterPage(){
		return new ModelAndView("tenant_register");
	}
	
	
	@RequestMapping(value = "/tenantLoginCheck.create")
	public ModelAndView loginCheck(HttpServletRequest request){
/*=============访问数据库==============*/
		//定义输入列表
		ArrayList<String> proInputParams=new ArrayList<String>();
		//给输入参数列表赋值
		proInputParams.add(request.getParameter("tenantAcount"));
		proInputParams.add(request.getParameter("password"));
		//定义输出参数的列表,用？给出参数站位
		ArrayList<String> proOutputParams=new ArrayList<String>();
		proOutputParams.add("?");
		proOutputParams.add("?");
		proOutputParams.add("?");
		
		//数据库操作
		proOutputParams=accessProModule.accessDB("pckg_tenant_login",proInputParams,proOutputParams);
		//取返回值
		String o_flag=proOutputParams.get(0);//0-查询成功，1-未查询到，2-密码错误，-1异常
		String o_msg=proOutputParams.get(1);
		String tenantId=proOutputParams.get(2);
/*=========end of 访问数据库==========*/		
		if(o_flag.equals("0")){//查询成功
			request.getSession().setAttribute("tenantId",tenantId);
			//查询租户主页
			ArrayList<String> picturePaths=homePageService.getPicturePaths(tenantId);
			request.getSession().setAttribute("picturePaths", picturePaths);
			//返回page
			//return new ModelAndView("tenant_has_logined");
			return new ModelAndView("homepage-tenant-load");
		}else if(o_flag.equals("1")){//未查询到结果
			return new ModelAndView("tenant_login", "error", "账号不存在");
		}else if(o_flag.equals("2")){//密码错误
			return new ModelAndView("tenant_login", "error", "密码错误");
		}
		else {//异常
			logger.error("租户登录查询数据库异常："+o_msg);
			return new ModelAndView("tenant_login", "error", "系统出现异常，请联系维护人员或是稍后再试");
		}
	}
	
	//租户注册
	@RequestMapping(value="/tenantRegisterProcess.create")
	public ModelAndView tenantRegiter(HttpServletRequest request){
		
/*=============访问数据库==============*/
		//定义输入列表
		ArrayList<String> proInputParams=new ArrayList<String>();
		//给输入参数列表赋值
		proInputParams.add(request.getParameter("tenantAcount"));
		proInputParams.add(request.getParameter("password"));
		proInputParams.add(request.getParameter("tenantName"));
		//定义输出参数的列表,用？给出参数站位
		ArrayList<String> proOutputParams=new ArrayList<String>();
		proOutputParams.add("?");//返回码
		proOutputParams.add("?");//返回信息
		proOutputParams.add("?");//租户id
		
		//数据库操作
		proOutputParams=accessProModule.accessDB("pckg_tenant_register",proInputParams,proOutputParams);
		//取返回值
		String o_flag=proOutputParams.get(0);//0-注册成功，1-账户已存在，-1异常
		String o_msg=proOutputParams.get(1);
		String tenantId=proOutputParams.get(2);
/*=========end of 访问数据库==========*/
		if(o_flag.equals("0")){//注册成功
			request.getSession().setAttribute("tenantId",tenantId);
			return new ModelAndView("tenant_has_logined");	
		}else if(o_flag.equals("1")){//账户已存在
			return new ModelAndView("tenant_register", "error", "账号不存在");
		}else {//异常
			logger.error("租户登录查询数据库异常："+o_msg);
			return new ModelAndView("tenant_register", "error", "系统出现异常，请联系维护人员或是稍后再试");
		}
	}
	
}
