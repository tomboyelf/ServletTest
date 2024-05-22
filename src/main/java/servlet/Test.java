package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Page;

@WebServlet(urlPatterns={"/servlet/test"})
public class Test extends HttpServlet {

	public void doPost (
		HttpServletRequest request, HttpServletResponse response
	) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();

		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String comp=request.getParameter("comp");
		String mail=request.getParameter("mail");
		String text=request.getParameter("text");
		String[] mailmagas=request.getParameterValues("mailmaga");
		int info=Integer.parseInt(request.getParameter("info"));
		
//		String[] mailmagas=request.getParameterValues("mailmaga");

		Page.header(out);
		request.setAttribute("name", name);
		request.setAttribute("comp", comp);
		request.setAttribute("mail", mail);
		request.setAttribute("text", text);
		request.setAttribute("mailmagas", mailmagas);
		request.setAttribute("info", info);
		request.getRequestDispatcher("../jsp/output.jsp").forward(request, response);
//		out.println("<p>名前："+name+"</p>");
//		out.println("<p>会社："+comp+"</p>");
//		out.println("<p>メールアドレス："+mail+"</p>");
//		out.println("<p>問い合わせ内容："+text+"</p>");
////		
//		if(mailmagas!=null) {
//			out.println("<p>希望するメルマガ</p><br>");
//			for(String mailmaga : mailmagas) {
//				out.println(mailmaga);
//			}
//			
//		} else {
//			out.println("何も要らず");
//		}
//		
//		if(info=="yes") {
//			
//		} else
		
		
		Page.footer(out);
	}
}

