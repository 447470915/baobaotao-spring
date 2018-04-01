package test.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/*spring×°ÔØµ¥Àý²âÊÔ*/
@Controller
public class SpringTestControler {
	@Autowired
	private SameBeans sameBeans;
	@RequestMapping(value = "/springTestInterface.create")
	public ModelAndView springTestInterface (){
		int result = sameBeans.getValue();
		System.out.println(result);
		return new ModelAndView(""); 
	}
}
