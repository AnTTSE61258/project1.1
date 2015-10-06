package com.cworld.reviewfilm.dao;

import java.util.List;

import com.cworld.reviewfilm.model.Comment;

public interface CommentDAO {
	public void addComment(Comment comment);
	public List<Comment> getComment(String filmID);
	public List<Comment> getAllComment();
	public void changeCommentStatus(String commentId);
}
