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
	//�⻧ע��
	@RequestMapping(value="/test1.create")
	public ModelAndView tenantRegiter(HttpServletRequest request){
		//���������б�
				ArrayList<String> proInputParams=new ArrayList<String>();
				//����������б�ֵ
				proInputParams.add("1");
				//��������������б�,�ã���������վλ
				ArrayList<String> proOutputParams=new ArrayList<String>();
				proOutputParams.add("?");
				proOutputParams.add("?");

				//���ݿ����
				List<Map<String,Object>> listMap=daoByPckag.accessDBSet("PCKG_RESULTSET_TEST",proInputParams,proOutputParams);
				System.out.println(listMap.toString());
				return(new ModelAndView(""));
	}	
}
