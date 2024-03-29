
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

	@RequestMapping(path = { "/", "home.do" })
	public String home() {
		return "WEB-INF/home.jsp";

	}

	@RequestMapping(path = { "/", "idsearch.do" })
	public String idSearch() {
		return "WEB-INF/searchById.jsp";

	}

	@RequestMapping(path = { "/", "kwsearch.do" })
	public String keywordSearch() {
		return "WEB-INF/searchByKeyword.jsp";

	}

	@RequestMapping(path = { "/", "result.do" })
	public String result() {
		return "WEB-INF/result.jsp";

	}

	@RequestMapping(path = { "/", "cf.do" })
	public String createFilm() {
		return "WEB-INF/createFilm.jsp";

	}

	@RequestMapping(path = { "/", "editFilm.do" })
	public String editFilm() {
		return "WEB-INF/editFilm.jsp";

	}

	@RequestMapping(path = "findFilmById.do", params = "ID", method = RequestMethod.GET)
	public ModelAndView findFilmById(int ID) {
		ModelAndView mv = new ModelAndView();
		Film f = filmDao.findFilmById(ID);
		mv.addObject("film", f);
		
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}

	@RequestMapping(path = "searchByKeyWord.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView findFilmBySearch(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDao.findFilmBySearch(keyword);
		mv.addObject("film", films);
		mv.setViewName("WEB-INF/filmListResult.jsp");
		return mv;
	}

	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Film createfilm) {
		ModelAndView mv = new ModelAndView();
		Film newFilm = filmDao.createFilm(createfilm);
		mv.addObject("film", newFilm);
		mv.setViewName("WEB-INF/createFilmResult.jsp");

		return mv;

	}

	@RequestMapping(path = "editFilmById.do", params = "ID", method = RequestMethod.GET)
	public ModelAndView editFilmById(int ID) {
		ModelAndView mv = new ModelAndView();
		Film f = filmDao.findFilmById(ID);
		mv.addObject("film", f);
		
		mv.setViewName("WEB-INF/editFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "editFilm.do", method = RequestMethod.POST)
	public ModelAndView editFilm(Film film,int ID) {
		
		ModelAndView mv = new ModelAndView();
		
		filmDao.editFilm(film, ID);
		
		mv.setViewName("WEB-INF/editFilmResult.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.POST)
	public ModelAndView deleteFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		if (film.getId() <= 1000) {
			film = null;
		} else {
			filmDao.deleteFilm(film);	
		}
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/Delete.jsp");
		return mv;

	}

}