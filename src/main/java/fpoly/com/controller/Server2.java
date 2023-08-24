package fpoly.com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Server2
 */
@WebServlet(urlPatterns = { "/bai2" })
public class Server2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Server2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Set ký tự là UTF-8
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Bai2.jsp");
		requestDispatcher.forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Set ký tự là UTF-8
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");
		String status = req.getParameter("merried");
		String coutry = req.getParameter("country");
		String note = req.getParameter("ghichu");
		
		String maritalStatus = "";
		if(status == null) {
			maritalStatus = "Độc thân vui tính";
		}else {
			maritalStatus = status;
		}
		
		req.setAttribute("username", userName);
		req.setAttribute("password", password);
		req.setAttribute("gender", gender);
		req.setAttribute("status", maritalStatus);
		req.setAttribute("coutry", coutry);
		req.setAttribute("note", note);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/InforUserBai2.jsp");
		requestDispatcher.forward(req, resp);
		
	}

}
