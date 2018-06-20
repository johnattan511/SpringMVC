package com.johnattan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorEquipos {

	@RequestMapping(value="/nuevoEquipo", method=RequestMethod.GET)
	public ModelAndView llevarFormulario(){
		return new ModelAndView("ingresoEquipo", "commandoneto", new Equipos());
	}
	
	@RequestMapping(value="/setearEquipo", method=RequestMethod.POST)
	public String ingresarEquipo (@ModelAttribute("") Equipos equipo, ModelMap mapa){
		mapa.addAttribute("nombre", equipo.getNombre());
		mapa.addAttribute("ciudad", equipo.getCiudad());
		return "salidaEquipos";
		}
}
