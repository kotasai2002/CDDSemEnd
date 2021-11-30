package com.resume;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ResumeSpringbootappApplication {
	
	@Value("${welcome.message:test}")
	private String message = "Hello World";
	@RequestMapping(value="/html",method = RequestMethod.GET)
	public String addRegistrationPage() {
	    return "resume";
	}
	@RequestMapping(value="/",method = RequestMethod.POST)
	public String addURegistrationPage(@RequestBody String u) {

	    boolean b = true;
	    if (b)
	        return "welcome";
	    else
	        return "resume";
	}

}

