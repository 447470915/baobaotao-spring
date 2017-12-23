package test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.baobaotao.dao.DaoByPckag;

@Controller
public class TestController{
	@Autowired
	private DaoByPckag daoByPckag;	
	//租户注册
	@RequestMapping(value="/test1.create")
	public ModelAndView tenantRegiter(HttpServletRequest request){
		//定义输入列表
				ArrayList<String> proInputParams=new ArrayList<String>();
				//给输入参数列表赋值
				proInputParams.add("1");
				//定义输出参数的列表,用？给出参数站位
				ArrayList<String> proOutputParams=new ArrayList<String>();
				proOutputParams.add("?");
				proOutputParams.add("?");

				//数据库操作
				List<Map<String,Object>> listMap=daoByPckag.accessDBSet("PCKG_RESULTSET_TEST",proInputParams,proOutputParams);
				System.out.println(listMap.toString());
				return(new ModelAndView(""));
	}	
}
