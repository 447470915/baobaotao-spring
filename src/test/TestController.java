package test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import zmapper.test.Mapper;

@Controller
public class TestController{
	@Autowired
	private Mapper mapper;
	@RequestMapping(value="/test1.create")
	public ModelAndView test(HttpServletRequest request){
		int count = mapper.selectCount();
		System.out.println("result is " + count);
		return(new ModelAndView(""));
	}	
}
