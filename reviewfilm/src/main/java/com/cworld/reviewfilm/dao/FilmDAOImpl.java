package com.cworld.reviewfilm.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.cworld.reviewfilm.model.Film;

public class FilmDAOImpl implements FilmDAO{
	private SessionFactory sessionFactory;

	public FilmDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	@Override
	public void makeFilmActive(boolean isAcive) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeFilm() {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	@Transactional
	public void addFilm(Film film) {
		Session session= sessionFactory.getCurrentSession();
		session.save(film);
	}


	@Override
	@Transactional
	public List<Film> getAllCurrentFilm() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Film WHERE active=1 AND upcoming=0");
		List<Film> films = query.list();
		return films;
	}


	@Override
	@Transactional
	public List<Film> getAllFilmWithoutCheckActive() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Film");
		List<Film> films = query.list();
		return films;
	}

	@Override
	@Transactional
	public List<Film> getAllUpcomingFilm() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Film WHERE active=1 AND upcoming=1");
		List<Film> films = query.list();
		return films;
	}
	
}
