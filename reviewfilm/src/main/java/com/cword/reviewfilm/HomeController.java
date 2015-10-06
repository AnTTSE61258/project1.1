package com.cword.reviewfilm;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cworld.reviewfilm.dao.CommentDAO;
import com.cworld.reviewfilm.dao.FilmDAO;
import com.cworld.reviewfilm.model.Comment;
import com.cworld.reviewfilm.model.Film;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	FilmDAO filmDAOImpl;
	@Autowired
	CommentDAO commentDAOImpl;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		List<Film> films = filmDAOImpl.getAllCurrentFilm();
		model.addAttribute("films", films);
		String description = "Tổng hợp review, comment của những bộ phim đang chiếu";
		String title = "Review Phim";
		for (Film film : films) {
			description += "|" + film.getName();
			title += "|" + film.getName();
		}
		model.addAttribute("description", description);
		model.addAttribute("title", title);
		return "home";
	}

	@RequestMapping(value = "/kiemduyet", method = RequestMethod.GET)
	public String kiemduyet(Model model) {
		List<Film> films = filmDAOImpl.getAllFilmWithoutCheckActive();
		model.addAttribute("films", films);
		List<Comment> comments = commentDAOImpl.getAllComment();
		model.addAttribute("comments", comments);
		return "kiemduyet";
	}
	
	@RequestMapping(value = "/phimsapchieu", method = RequestMethod.GET)
	public String filmsapchieu(Model model){
		List<Film> films = filmDAOImpl.getAllUpcomingFilm();
		model.addAttribute("films", films);
		String description = "Tổng hợp review, comment của những bộ phim đang chiếu";
		String title = "Review Phim";
		model.addAttribute("description", description);
		model.addAttribute("title", title);

		return "home";
		
	}
	
	@RequestMapping(value = "/getComments", method = RequestMethod.POST)
	public @ResponseBody List<Comment> comments(@RequestParam(value = "filmId", required = true) String filmId) {
		List<Comment> comments = commentDAOImpl.getComment(filmId);
		return comments;
	}
	@RequestMapping(value = "/addComments", method = RequestMethod.POST)
	public @ResponseBody String addComments(@RequestParam(value = "user", required = true) String user,
			@RequestParam(value = "email", required = true) String email,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "filmid", required = true) String filmId,
			HttpServletRequest request) {
		boolean isHaveAccess = request.isUserInRole("ROLE_MOD");
		Comment comment;
		comment = new Comment();
		comment.setId("0");
		comment.setUser(user);
		comment.setEmail(email);
		comment.setContent(content);
		comment.setFilmid(filmId);
		comment.setActive(isHaveAccess); //Nếu có acess thì active luôn
		commentDAOImpl.addComment(comment);
		return "true";
	}
	@RequestMapping(value = "/changeCommentStatus", method = RequestMethod.POST)
	public @ResponseBody String changeCommentStatus(Model model,
			@RequestParam(value = "commentid", required = true) String commentid) {
		commentDAOImpl.changeCommentStatus(commentid);
		return "true";
	}

	@RequestMapping(value = "/lienhe", method = RequestMethod.GET)
	public String lienhe() {
		return "lienhe";
	}

}
