package com.cworld.reviewfilm.dao;

import java.util.List;

import com.cworld.reviewfilm.model.Film;

public interface FilmDAO {
	public void addFilm(Film film);
	public void makeFilmActive(boolean isAcive);
	public void removeFilm();
	public List<Film> getAllCurrentFilm();
	public List<Film> getAllUpcomingFilm();
	public List<Film> getAllFilmWithoutCheckActive();
}
