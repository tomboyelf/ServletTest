package jp.co.aforce.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jp.co.aforce.dao.TweetDAO;

@WebServlet("/delete_tweet")
public class DeleteTweet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String tweetdelete = request.getParameter("delete_button");
		int tweetId = Integer.parseInt(tweetdelete);
		
		TweetDAO tweetDAO = new TweetDAO();
		try {
			tweetDAO.deleteTweet(tweetId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect("tweet_list");
			
	}
}
