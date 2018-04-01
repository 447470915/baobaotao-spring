package test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/springRESTTestInterface.create")
public class SpringRESTTestControler {
	private int value1=10;
	private int value2=10;
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView springRESTTestInterface (){
		System.out.println(value1);
		return new ModelAndView(""); 
	}
	
	@RequestMapping(method=RequestMethod.PUT)
	public ModelAndView springRESTTestInterface2 (){
		value2++;
		System.out.println(value2);
		return new ModelAndView(""); 
	}
}
