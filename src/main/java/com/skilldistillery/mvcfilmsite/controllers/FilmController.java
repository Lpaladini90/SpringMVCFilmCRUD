package com.skilldistillery.mvcfilmsite.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.mvcfilmsite.data.FilmDAO;
import com.skilldistillery.mvcfilmsite.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO filmDao;
	
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String home() {
		return "WEB-INF/home.jsp";
		
		
	}
	
	@RequestMapping(path = {"/", "idsearch.do"})
	public String idSearch() {
		return "WEB-INF/searchById.jsp";
		
		
	}
	
	@RequestMapping(path = {"/", "kwsearch.do"})
	public String keywordSearch() {
		return "WEB-INF/searchByKeyword.jsp";
		
		
	}
	
	@RequestMapping(path = {"/", "result.do"})
	public String result() {
		return "WEB-INF/result.jsp";
		
		
	}
	
	@RequestMapping(path = {"/", "cf.do"})
	public String createFilm() {
		return "WEB-INF/createFilm.jsp";
		
		
	}
	    
	
	@RequestMapping(path = "findFilmById.do", params = "ID", method = RequestMethod.GET)
	public ModelAndView findFilmById(int ID) {
		ModelAndView mv = new ModelAndView();
		Film f= filmDao.findFilmById(ID);
		mv.addObject("film", f);
		mv.setViewName("WEB-INF/searchById.jsp");
	
		return mv;
	}
	
	@RequestMapping(path = "findFilmBySearch.do", params = "filmsearch", method = RequestMethod.GET)
	public ModelAndView findFilmBySearch(String choice) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDao.findFilmBySearch(choice);
		mv.addObject("filmsearch", films);
		mv.setViewName("/searchByKeyword.jsp");
		return mv;
	}
	
	
	@RequestMapping(path = "createFilm.do", params = "createfilm", method = RequestMethod.POST)
	public ModelAndView creatFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		Film newFilm= filmDao.createFilm(film);
		mv.addObject("createfilm", newFilm);
		mv.setViewName("/createFilm.jsp");
		
		return mv;
		
	}
	
//	@RequestMapping(path = "editfilm", params = "editFilm", method = RequestMethod.POST)
//	public ModelAndView editFilm()
	
	
	
}
