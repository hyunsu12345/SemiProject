package semi.proj.PfF.qa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import semi.proj.PfF.qa.model.service.QaService;

@Controller
public class QaController {
	
	@Autowired
	private QaService qService;
}
