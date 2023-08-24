package fpoly.com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Server1
 */
@WebServlet(urlPatterns = {"/bai1","/chuvi","/dientich"})
public class Server1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Server1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/Bai1.jsp");
		requestDispatcher.forward(req, resp);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if (url.contains("chuvi")) {

			String valueA = req.getParameter("valueA");
			Double a = Double.parseDouble(valueA);

			String valueB = req.getParameter("valueB");
			Double b = Double.parseDouble(valueB);

			Double resualt = (a + b) * 2;
			req.setAttribute("resualt", resualt);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/KetQua.jsp");
			requestDispatcher.forward(req, resp);

		} else if (url.contains("dientich")) {
			String valueA = req.getParameter("valueA");
			Double a = Double.parseDouble(valueA);

			String valueB = req.getParameter("valueB");
			Double b = Double.parseDouble(valueB);

			Double resualt = a * b;
			req.setAttribute("resualt", resualt);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/KetQua.jsp");
			requestDispatcher.forward(req, resp);
		}
	}

}
