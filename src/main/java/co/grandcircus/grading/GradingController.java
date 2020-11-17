package co.grandcircus.grading;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class GradingController {
	/*
	 * List some of the paths or routes
	 * 1.Page that lists the Grades from the Grade table
	 * 2.Page for typing the new entry - GET "/add"
	 * 3.Page for add confirmation - POST "/add"
	 * 4.Page for deleting a row in Grade table - GET "/delete?id=4"
	 * 5.Route that actually deletes the entry - GET,"/reallyDelete?id=6
	 */
	
	@Autowired
	private GradeRepository rep;
	
	@GetMapping("/")
	public String index(Model model)
	{
		double scores=0.0;
		double total =0.0;
		double percentage =0.0;
		List<Grade> grades = rep.findAll();
		System.out.println(grades);
		if(grades.isEmpty())
		model.addAttribute("message","No Grades to Display");
		else
		model.addAttribute("message","");
		model.addAttribute("grades",grades);
		
		for(Grade grade:grades)
		{
			scores += grade.getScore();
			total +=  grade.getTotal();
		}
		percentage= (scores/total)*100;
		model.addAttribute("percentage",percentage);
		
		return "index";
	}
	
	@GetMapping("/addgrade")
	public String index()
	{
		return "addgrade";
	}
	
	@PostMapping("/addgrade")
	public String add(Grade grade,Model model)
	{
		rep.save(grade);
		model.addAttribute("car",grade);		
		return "addconfirm";
		
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("id") long id,Model model)
	{
		Grade grade = rep.findById(id).get(); 
		model.addAttribute("grade",grade);
		return "deleteconfirm";
	}
		
	@GetMapping("/reallydelete")
	public String reallydelete(@RequestParam("id") long id)
	{
		rep.deleteById(id);
		return "redirect:/";
	}
	


}
