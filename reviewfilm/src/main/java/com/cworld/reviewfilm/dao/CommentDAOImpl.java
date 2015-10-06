package com.cworld.reviewfilm.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.cworld.reviewfilm.model.Comment;

public class CommentDAOImpl implements CommentDAO{
	private SessionFactory sessionFatory;
	public CommentDAOImpl(SessionFactory sessionFactory) {
		this.sessionFatory = sessionFactory;
	}
	
	@Override
	@Transactional
	public void addComment(Comment comment) {
		Session session = sessionFatory.getCurrentSession();
		session.save(comment);
	}

	@Override
	@Transactional
	public List<Comment> getComment(String filmID) {
		Session session = sessionFatory.getCurrentSession();
		Query query = session.createQuery("FROM Comment WHERE filmid = :filmid AND active=1");
		query.setParameter("filmid", filmID);
		List<Comment> comments = query.list();
		return comments;
	}

	@Override
	@Transactional
	public List<Comment> getAllComment() {
		Session session = sessionFatory.getCurrentSession();
		Query query = session.createQuery("FROM Comment");
		List<Comment> comments = query.list();
		return comments;
	}

	@Override
	@Transactional
	public void changeCommentStatus(String commentId) {
		Session session = sessionFatory.getCurrentSession();
		Query query = session.createQuery("FROM Comment WHERE id = :id");
		query.setParameter("id", commentId);
		Comment target = (Comment) query.uniqueResult();
		target.setActive(!target.isActive());
		session.save(target);
	}

}
