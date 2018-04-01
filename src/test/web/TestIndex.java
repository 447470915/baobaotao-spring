package test.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*≤‚ ‘“≥*/
@Controller
public class TestIndex {
	@RequestMapping(value="/testIndexInterface.create")
	public ModelAndView testIndexInterface (){
		return new ModelAndView("test/test"); 
	}
	}
