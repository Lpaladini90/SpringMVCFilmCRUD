package com.skilldistillery.mvcfilmsite.data;

import java.util.List;

import com.skilldistillery.mvcfilmsite.entities.Actor;
import com.skilldistillery.mvcfilmsite.entities.Film;

public interface FilmDAO {
	  public Film findFilmById(int filmId);
	  public Actor findActorById(int actorId);
	  public List<Actor> findActorsByFilmId(int filmId);
	  public List<Film> findFilmBySearch(String choice);
	  public Film createFilm(Film film);
	  public Film editFilm(Film film, int filmId);
	  public Film deleteFilm(Film film);
}
