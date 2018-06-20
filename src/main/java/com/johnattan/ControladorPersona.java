package com.johnattan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorPersona {
    
	@RequestMapping(value="ingresoPersonaNueva", method=RequestMethod.GET)
	public ModelAndView mostrarFormularioPersona(){
		EntidadPersona p = new EntidadPersona();
		p.setNombre("paco");
		p.setApellido("pacon");
		 return new ModelAndView("ingresoPersona", "persona", p);
	} 	
	
	@RequestMapping(value="recurso", method=RequestMethod.GET)
	public String retornarRecurso(){
		return "redirect:/paginas/prueba.html";
	} 
	
	@RequestMapping(value = "crearNuevaPersona", method = RequestMethod.POST)
    public String submit(@Validated @ModelAttribute("persona")EntidadPersona persona, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        
        model.addAttribute("nombre", persona.getNombre());
        model.addAttribute("apellido", persona.getApellido());
        model.addAttribute("telefono", persona.getTelefono());
        model.addAttribute("correo", persona.getCorreo());

 
        return "salidaPersona";
    }
}
