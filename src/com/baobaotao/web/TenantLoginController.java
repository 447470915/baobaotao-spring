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
				//��ȥ���web�������ļ�����ľ���·��
				String sourceFileName=file.getOriginalFilename();
				logger.info("�⻧��"+tenantId+",�ϴ���һ��ͼƬ�����֣�"+sourceFileName);
				String sourceFileNameType=sourceFileName.substring(sourceFileName.indexOf("."));
				String targetRandomName=Integer.toString(new java.util.Random().nextInt(100000));
				//��ȡ���web�������ͼƬ�ľ���·��
				/*String dir=request.getSession().getServletContext().getRealPath("/")
				+"images/";*/
				String dir="D:/javaee_workspace/baobaotao-spring/WebContent/images/";
				String newDirAndFile=dir+tenantId+"/"+targetRandomName+sourceFileNameType;
				File desFile=new File(newDirAndFile);
				while(desFile.exists()){//��������������
					targetRandomName=Integer.toString(new java.util.Random().nextInt(100000));
					newDirAndFile=dir+targetRandomName+"."+sourceFileNameType;
				}
				desFile.mkdirs();//�½��ļ�
				//ת���ļ�
				file.transferTo(desFile);
			}catch(Exception e){
				logger.error("�⻧��"+tenantId+",�ϴ���һ��ͼƬʧ��.",e);
			}
		}
		return new ModelAndView("");
	}
	
	//��ȡ�⻧��¼����
	@RequestMapping(value = "/tenantLogin.create")
	public ModelAndView loginPage(){
		return new ModelAndView("tenant_login");
	}
	//��ȡ�⻧ע�����
	@RequestMapping(value = "/tenantRegister.create")
	public ModelAndView rigsterPage(){
		return new ModelAndView("tenant_register");
	}
	
	
	@RequestMapping(value = "/tenantLoginCheck.create")
	public ModelAndView loginCheck(HttpServletRequest request){
/*=============�������ݿ�==============*/
		//���������б�
		ArrayList<String> proInputParams=new ArrayList<String>();
		//����������б�ֵ
		proInputParams.add(request.getParameter("tenantAcount"));
		proInputParams.add(request.getParameter("password"));
		//��������������б�,�ã���������վλ
		ArrayList<String> proOutputParams=new ArrayList<String>();
		proOutputParams.add("?");
		proOutputParams.add("?");
		proOutputParams.add("?");
		
		//���ݿ����
		proOutputParams=accessProModule.accessDB("pckg_tenant_login",proInputParams,proOutputParams);
		//ȡ����ֵ
		String o_flag=proOutputParams.get(0);//0-��ѯ�ɹ���1-δ��ѯ����2-�������-1�쳣
		String o_msg=proOutputParams.get(1);
		String tenantId=proOutputParams.get(2);
/*=========end of �������ݿ�==========*/		
		if(o_flag.equals("0")){//��ѯ�ɹ�
			request.getSession().setAttribute("tenantId",tenantId);
			//��ѯ�⻧��ҳ
			ArrayList<String> picturePaths=homePageService.getPicturePaths(tenantId);
			request.getSession().setAttribute("picturePaths", picturePaths);
			//����page
			//return new ModelAndView("tenant_has_logined");
			return new ModelAndView("homepage-tenant-load");
		}else if(o_flag.equals("1")){//δ��ѯ�����
			return new ModelAndView("tenant_login", "error", "�˺Ų�����");
		}else if(o_flag.equals("2")){//�������
			return new ModelAndView("tenant_login", "error", "�������");
		}
		else {//�쳣
			logger.error("�⻧��¼��ѯ���ݿ��쳣��"+o_msg);
			return new ModelAndView("tenant_login", "error", "ϵͳ�����쳣������ϵά����Ա�����Ժ�����");
		}
	}
	
	//�⻧ע��
	@RequestMapping(value="/tenantRegisterProcess.create")
	public ModelAndView tenantRegiter(HttpServletRequest request){
		
/*=============�������ݿ�==============*/
		//���������б�
		ArrayList<String> proInputParams=new ArrayList<String>();
		//����������б�ֵ
		proInputParams.add(request.getParameter("tenantAcount"));
		proInputParams.add(request.getParameter("password"));
		proInputParams.add(request.getParameter("tenantName"));
		//��������������б�,�ã���������վλ
		ArrayList<String> proOutputParams=new ArrayList<String>();
		proOutputParams.add("?");//������
		proOutputParams.add("?");//������Ϣ
		proOutputParams.add("?");//�⻧id
		
		//���ݿ����
		proOutputParams=accessProModule.accessDB("pckg_tenant_register",proInputParams,proOutputParams);
		//ȡ����ֵ
		String o_flag=proOutputParams.get(0);//0-ע��ɹ���1-�˻��Ѵ��ڣ�-1�쳣
		String o_msg=proOutputParams.get(1);
		String tenantId=proOutputParams.get(2);
/*=========end of �������ݿ�==========*/
		if(o_flag.equals("0")){//ע��ɹ�
			request.getSession().setAttribute("tenantId",tenantId);
			return new ModelAndView("tenant_has_logined");	
		}else if(o_flag.equals("1")){//�˻��Ѵ���
			return new ModelAndView("tenant_register", "error", "�˺Ų�����");
		}else {//�쳣
			logger.error("�⻧��¼��ѯ���ݿ��쳣��"+o_msg);
			return new ModelAndView("tenant_register", "error", "ϵͳ�����쳣������ϵά����Ա�����Ժ�����");
		}
	}
	
}
